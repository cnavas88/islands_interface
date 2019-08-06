defmodule IslandsInterface.Mixfile do
  use Mix.Project

  def project do
    [
      app:              :islands_interface,
      version:          "0.1.0",
      elixir:           "~> 1.7",
      elixirc_paths:    elixirc_paths(Mix.env),
      compilers:        [:phoenix, :gettext] ++ Mix.compilers,
      build_embedded:   Mix.env == :prod,
      start_permanent:  Mix.env == :prod,
      deps:             deps()
    ]
  end

  def application do
    [
      mod: {IslandsInterface.Application, []},
      applications: [
        :phoenix,
        :phoenix_pubsub,
        :phoenix_html,
        :cowboy,
        :logger,
        :gettext,
        :islands_engine
      ]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:cowboy,                 "~> 1.0"},
      {:credo,                  "~> 1.1.2", only: [:dev, :test], runtime: false},
      {:gettext,                "~> 0.11"},
      {:islands_engine,    git: "git@github.com:cnavas88/islands_engine.git"},
      {:phoenix,                "~> 1.2.5"},
      {:phoenix_pubsub,         "~> 1.0"},
      {:phoenix_html,           "~> 2.6"},
      {:phoenix_live_reload,    "~> 1.0", only: :dev}
    ]
  end
end
