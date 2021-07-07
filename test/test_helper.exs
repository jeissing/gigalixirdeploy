Application.ensure_all_started(:hound)
ExUnit.configure formatters: [JUnitFormatter, ExUnit.CLIFormatter]
ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Gigalixirdeploy.Repo, :manual)
