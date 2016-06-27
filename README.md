# Slack

A client for the Slack API.

## Usage

All of the API methods work by first creating a Slack client
(`Slack.client(token)`) and then passing it in to an API call. Note that a
`Slack.Client` is only a convenience wrapper for a map with a `:token` key.

```elixir
Slack.client(token)
|> Slack.Channel.create(name: "mynewchannel")
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `slack` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:slack, "~> 0.0.1"}]
    end
    ```

  2. Ensure `slack` is started before your application:

    ```elixir
    def application do
      [applications: [:slack]]
    end
    ```

## Todo

- [ ] `Slack.DND`
- [ ] `Slack.Emoji`
- [ ] `Slack.File.Comment`
- [ ] `Slack.File`
- [ ] `Slack.Group`
- [ ] `Slack.IM`
- [ ] `Slack.MPIM`
- [ ] `Slack.OAuth`
- [ ] `Slack.Pin`
- [ ] `Slack.Reaction`
- [ ] `Slack.Reminder`
- [ ] `Slack.RTM`
- [ ] `Slack.Search`
- [ ] `Slack.Star`
- [ ] `Slack.Team`
- [ ] `Slack.Team.Profile`
- [ ] `Slack.UserGroup`
