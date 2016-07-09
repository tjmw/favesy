defmodule Favesy.Favourite do
  use Ecto.Model

  schema "favourites" do
    field :url

    timestamps
  end
end
