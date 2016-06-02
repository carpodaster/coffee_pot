ExUnit.start

Mix.Task.run "ecto.create", ~w(-r CoffeePot.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r CoffeePot.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(CoffeePot.Repo)

