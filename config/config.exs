# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :queue_underflow,
  ecto_repos: [QueueUnderflow.Repo]

# Configures the endpoint
config :queue_underflow, QueueUnderflow.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CdII4eukZEs51BAsTX9L9p8LZBS4UHgYkPdJckUjXBVfPO2orsu7zfcRHLzUgcmr",
  render_errors: [view: QueueUnderflow.ErrorView, accepts: ~w(html json)],
  pubsub: [name: QueueUnderflow.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
