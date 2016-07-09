defmodule Favesy.Api.FavouriteController do
  use Favesy.Web, :controller
  alias Favesy.Repo
  alias Favesy.Favourite

  def index(conn, _params) do
    favourites = Repo.all(Favourite)
    render conn, favourites: favourites
  end
end
