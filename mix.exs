defmodule EvalRepro.MixProject do
  use Mix.Project

  def project do
    [
      app: :eval_repro,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: true,
      deps: deps(),
      releases: [
        eval_repro: [
          include_executables_for: [:unix],
          applications: [
            runtime_tools: :permanent,
            opentelemetry_exporter: :permanent,
            opentelemetry: :temporary,
            eval_repro: :load
          ]
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EvalRepro.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:open_telemetry_decorator, "~> 1.5"},
      {:opentelemetry, "~> 1.5"},
      {:opentelemetry_api, "~> 1.4"},
      {:opentelemetry_exporter, "~> 1.8"},
    ]
  end
end
