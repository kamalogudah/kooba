use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :kooba_server, KoobaServerWeb.Endpoint,
  http: [port: 5000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

# ## SSL Support
#
# In order to use HTTPS in development, a self-signed
# certificate can be generated by running the following
# command from your terminal:
#
#     openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com" -keyout priv/server.key -out priv/server.pem
#
# The `http:` config above can be replaced with:
#
#     https: [port: 4000, keyfile: "priv/server.key", certfile: "priv/server.pem"],
#
# If desired, both `http:` and `https:` keys can be
# configured to run both http and https servers on
# different ports.

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

config :logger, level: :debug

# Configure your database
config :kooba_server, KoobaServer.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "kooba_server_dev",
  hostname: "localhost",
  pool_size: 10

config :kooba_server, KoobaServer.Guardian,
  issuer: "kooba_server",
  ttl: {30, :days},
  secret_key: "LG17BzmhBeq81Yyyn6vH7GVdrCkQpLktol2vdXlBzkRRHpYsZwluKMG9r6fnu90m"

# mpesa configs
config :kooba_server,
  api_url: "https://sandbox.safaricom.co.ke",
  consumer_key: "frGlHwNAAIGm6kpKtA1kpmnld9gkzxi8",
  consumer_secret: "uHqzvCmOXeA8ljda",
  pass_key: "",
  confirmation_url: "",
  validation_url: "",
  short_code: "",
  b2c_short_code: "600441",
  security_credential: "12qw",
  response_type: "Cancelled",
  certificate_path: "./lib/mpesa_elixir/keys/sandbox_cert.cer",
  initiator_name: "apiop39",
  b2c_initiator_name: "testweb",
  b2c_queue_time_out_url: "https://johninvictus.pagekite.me/v1x_mpesa/b2c/callback_url",
  b2c_result_url: "https://johninvictus.pagekite.me/v1x_mpesa/b2c/callback_url",
  b2b_queue_time_out_url: "",
  b2b_result_url: "",
  balance_queue_time_out_url: "",
  balance_result_url: "",
  status_queue_time_out_url: "",
  status_result_url: "",
  reversal_queue_time_out_url: "",
  reversal_result_url: "",
  stk_call_back_url: ""
