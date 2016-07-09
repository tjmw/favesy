defmodule Favesy.FavouriteControllerTest do
  use Favesy.ConnCase
  alias Favesy.Favourite
  alias Favesy.Repo

  test "/index returns a list of favourites", %{conn: conn} do
    {:ok, favourite} = %Favourite{url: "https://github.com"}
                       |> Repo.insert

    conn = get conn, api_favourite_path(conn, :index)

    response = json_response(conn, 200)
    assert response["favourites"] |> length == 1

    first_favourite = response["favourites"] |> Enum.at(0)
    assert first_favourite["url"] == favourite.url
  end
end
