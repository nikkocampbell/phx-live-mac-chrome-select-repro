# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :repro,
  ecto_repos: [Repro.Repo]

# Configures the endpoint
config :repro, ReproWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ly0X2ILhmTRLcmTmBMIT9e5RBaNJBfIDGIwIM9cWf0RvynmqC3qDmbR1UfdmiVTN",
  render_errors: [view: ReproWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Repro.PubSub,
  live_view: [signing_salt: "vRaUR2aF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
