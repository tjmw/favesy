defmodule Favesy.Router do
  use Favesy.Web, :router

  #pipeline :browser do
    #plug :accepts, ["html"]
    #plug :fetch_session
    #plug :fetch_flash
    #plug :protect_from_forgery
    #plug :put_secure_browser_headers
  #end

  pipeline :api do
    plug :accepts, ["json"]
  end

  #scope "/", Favesy do
    #pipe_through :browser # Use the default browser stack
  #end

  # Other scopes may use custom stacks.
  scope "/api", as: :api, alias: Favesy.Api do
    pipe_through :api
    resources "/favourites", FavouriteController, only: [:index]
  end
end
