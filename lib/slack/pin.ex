defmodule Slack.Pin do
  @moduledoc """
  Functions for working with pinned items
  """

  @base "pins"

  use Slack.Request

  @doc """
  Pin an item to a channel.

  https://api.slack.com/methods/pins.add

  ## Examples

      Slack.client(token)
      |> Slack.Pin.add(channel: "C1234567890", file: "F1234567890")
  """
  @spec add(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :add

  @doc """
  List pins in a channel.

  https://api.slack.com/methods/pins.list

  ## Examples

      Slack.client(token)
      |> Slack.Pin.list(channel: "C1234567890")
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Un-pin an item from a channel.

  https://api.slack.com/methods/pins.remove

  ## Examples

      Slack.client(token)
      |> Slack.Pin.remove(channel: "C1234567890", file: "F1234567890")
  """
  @spec remove(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :remove
end
