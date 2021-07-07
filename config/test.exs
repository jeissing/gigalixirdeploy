use Mix.Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :gigalixirdeploy, Gigalixirdeploy.Repo,
  username: "postgres",
  password: "postgres",
  database: "gigalixirdeploy_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gigalixirdeploy, GigalixirdeployWeb.Endpoint,
  http: [port: 4002],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

config :hound, driver: "chrome_driver", browser: "chrome_headless"
# config :hound, driver: "chrome_driver"

config :junit_formatter,
  report_file: "report_file_test.xml",
  # report_dir: "/tmp",
  print_report_file: true,
  prepend_project_name?: true,
  include_filename?: true
