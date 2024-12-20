import Config

config :open_telemetry_decorator, attr_joiner: "."

config :opentelemetry,
       sweeper: %{span_ttl: :infinity, interval: :infinity},
       processors: [{:otel_simple_processor, %{}}]

import_config "#{config_env()}.exs"