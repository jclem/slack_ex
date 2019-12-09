defmodule Slack.Reaction do
  @moduledoc """
  Functions for working with reactions to messages 👍
  """

  @base "reactions"

  use Slack.Request

  @doc """
  Add a reaction to an item.

  https://api.slack.com/methods/reactions.add

  ## Examples

      Slack.Reaction.add(client,
                         name: "thumbsup",
                         timestamp: 1234567890.123456,
                         channel: "C1234567890")
  """
  @spec add(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :add

  @doc """
  Get reactions for an iteam.

  https://api.slack.com/methods/reactions.get

  ## Examples

      Slack.Reaction.get(client,
                         name: "thumbsup",
                         timestamp: 1234567890.123456,
                         channel: "C1234567890")
  """
  @spec get(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :get

  @doc """
  List items reacted to by the user.

  https://api.slack.com/methods/reactions.list

  ## Examples

      Slack.Reaction.list(client)
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Remove a reaction from an item.

  https://api.slack.com/methods/reactions.remove

  ## Examples

      Slack.Reaction.remove(client,
                            name: "thumbsup",
                            timestamp: 1234567890.123456,
                            channel: "C1234567890")
  """
  @spec remove(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :remove
end
