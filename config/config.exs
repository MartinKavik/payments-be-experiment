# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :murta_payments_be,
  ecto_repos: [MurtaPaymentsBe.Repo]

# Configures the endpoint
config :murta_payments_be, MurtaPaymentsBe.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e2DRnLxTWXdzukq1bNvmSkg3UExvbP1X7m4msqwiWddJWc2fhJhEwP/lfpUktakz",
  render_errors: [view: MurtaPaymentsBe.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MurtaPaymentsBe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
