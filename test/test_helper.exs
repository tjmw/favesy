ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Favesy.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Favesy.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Favesy.Repo)

