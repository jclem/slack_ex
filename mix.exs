defmodule Slack.Mixfile do
  use Mix.Project

  @github_url "https://github.com/jclem/slack_ex"
  @version "0.0.6"

  def project do
    [app: :slack,
     description: "A client for the Slack API",
     version: @version,
     package: package,
     name: "Slack",
     homepage_url: @github_url,
     source_url: @github_url,
     docs: [extras: ["README.md", "LICENSE.md"]],
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     dialyzer: [plt_add_deps: true],
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

  defp package do
    [name: :slack_ex,
     licenses: ["MIT"],
     maintainers: ["Jonathan Clem <jonathan@jclem.net>"],
     links: %{"GitHub" => @github_url}]
  end
end
