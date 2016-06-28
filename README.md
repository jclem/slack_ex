# SlackEx

A client for the Slack API.

## Usage

Most of the API methods work by first creating a Slack client
(`Slack.client(token)`) and then passing it in to an API call. Note that a
`Slack.Client` is only a convenience wrapper for a map with a `:token` key.

```elixir
{:ok, %{"channel" => channel}} =
  token
  |> Slack.client
  |> Slack.Channel.create(name: "mynewchannel")
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `slack` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:slack_ex, "~> 0.0.14"}]
    end
    ```
