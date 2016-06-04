use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :xfootbot, Xfootbot.Endpoint,
  secret_key_base: "E1B3K0q5iYQDb+VzgMdQy30LRfaVawBtFew1jjQiIyz2mpaNDn48k+zZsLOm2pEJ"

# Configure your database
config :xfootbot, Xfootbot.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "h_prod",
  pool_size: 20
