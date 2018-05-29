# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :brunch_sample,
  ecto_repos: [BrunchSample.Repo]

# Configures the endpoint
config :brunch_sample, BrunchSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jA+Q9aKk+LL+JvPI2/nhnmnIJ0i3n7CpIrGlfRRzfQGXcWoKUlwscOBVSgh9n6na",
  render_errors: [view: BrunchSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BrunchSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
