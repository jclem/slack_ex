defmodule Slack.Chat do
  @moduledoc """
  Functions for handling channel messages
  """

  @base "chat"

  use Slack.Request

  @doc """
  Delete a chat message.

  https://api.slack.com/methods/chat.delete

  ## Examples

      Slack.client(token)
      |> Slack.Chat.delete(channel: "C1234567890", ts: "1405894322.002768")
  """
  @spec delete(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :delete

  @doc """
  Send a "me message" to a channel.

  https://api.slack.com/methods/chat.meMessage

  ## Examples

      Slack.client(token)
      |> Slack.Chat.meMessage(channel: "C1234567890", text: "Hello")
  """
  @spec meMessage(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :meMessage

  @doc """
  Post a message to a channel.

  https://api.slack.com/methods/chat.postMessage

  ## Examples

      Slack.client(token)
      |> Slack.Chat.postMessage(channel: "C1234567890", text: "Hello")
  """
  @spec postMessage(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :postMessage

  @doc """
  Update a message in a channel.

  https://api.slack.com/methods/chat.update

  ## Examples

      Slack.client(token)
      |> Slack.Chat.postMessage(
           channel: "C1234567890", text: "Hello", ts: "1405894322.002768")
  """
  @spec update(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :update
end
