# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# general application configuration
config :parcel, ecto_repos: [Parcel.Repo]

# Configures the endpoint
config :parcel, ParcelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zLG/tBftJI2Jf2PBgQNAjta6anAIO4keIwZf75AhdBFUl1Zfvsd9seHwg6iaGwxY",
  render_errors: [view: ParcelWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Parcel.PubSub, adapter: Phoenix.PubSub.PG2]

# configures address candidate API to use
config :parcel, :nashville_arc_gis_api, Parcel.NashvilleArcgisApi.HttpClient

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
