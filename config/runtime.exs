import Config

key = System.fetch_env!("HONEYCOMB_KEY")

config :opentelemetry_exporter,
       otlp_endpoint: "https://api.honeycomb.io:443",
       otlp_headers: [{"x-honeycomb-team", key}]