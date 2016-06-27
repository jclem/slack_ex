defmodule Slack.Channel do
  @moduledoc """
  A publicly listed communication channel in a team
  """

  @base "channels"

  use Slack.Request

  @doc """
  Archive a channel.

  https://api.slack.com/methods/channels.archive

  ## Examples

      Slack.client(token)
      |> Slack.Channel.create(channel: "C1234567890")
  """
  @spec archive(Slack.Client.t, Keyword.t) :: Slack.response
  defrequest archive(client, body \\ []) do
    Slack.post "#{@base}.archive",
               {:form, body},
               [],
               params: [token: client.token]
  end

  @doc """
  Create a channel.

  https://api.slack.com/methods/channels.create

  ## Examples

      Slack.client(token)
      |> Slack.Channel.create(name: "mychannel")
  """
  @spec create(Slack.Client.t, Keyword.t) :: Slack.response
  defrequest create(client, body \\ []) do
    Slack.post "#{@base}.create",
               {:form, body},
               [],
               params: [token: client.token]
  end

  @doc """
  List all of the channels in a team.

  https://api.slack.com/methods/channels.list

  ## Examples

      Slack.client(token)
      |> Slack.Channel.list
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.response
  defrequest list(client, query \\ []) do
    params = query |> Keyword.put(:token, client.token)
    Slack.get "#{@base}.list", [], params: params
  end
end
