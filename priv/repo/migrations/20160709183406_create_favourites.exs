defmodule Favesy.Repo.Migrations.CreateFavourites do
  use Ecto.Migration

  def change do
    create table(:favourites) do
      add :url, :string

      timestamps
    end
  end
end
