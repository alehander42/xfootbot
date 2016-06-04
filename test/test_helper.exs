ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Xfootbot.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Xfootbot.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Xfootbot.Repo)

