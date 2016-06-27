defmodule Slack.Mixfile do
  use Mix.Project

  def project do
    [app: :slack,
     description: "A client for the Slack API",
     version: "0.0.1",
     licenses: ["MIT"],
     maintainers: ["Jonathan Clem <jonathan@jclem.net>"],
     links: %{"GitHub" => "https://github.com/jclem/slack_ex",
              "Docs" => "https://hexdocs.pm/slack_ex"},
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.9.0"},
     {:poison, "~> 2.2.0"},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
