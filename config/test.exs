use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :queue_underflow, QueueUnderflow.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :queue_underflow, QueueUnderflow.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("QUEUEUNDERFLOW_USERNAME")
  password: System.get_env("QUEUEUNDERFLOW_PASSWORD")
  database: "queue_underflow_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
