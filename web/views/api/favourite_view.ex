defmodule Favesy.Api.FavouriteView do
  use Favesy.Web, :view

  def render("index.json", %{favourites: favourites}) do
    %{favourites: render_many(favourites, Favesy.Api.FavouriteView, "favourite.json")}
  end

  def render("favourite.json", %{favourite: favourite}) do
    %{
      id: favourite.id,
      url: favourite.url,
      inserted_at: favourite.inserted_at
    }
  end
end
