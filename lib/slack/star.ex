defmodule Slack.Star do
  @moduledoc """
  Functions for working with starred items
  """

  @base "stars"

  use Slack.Request

  @doc """
  Add a star to an item.

  https://api.slack.com/methods/stars.add

  ## Examples

      Slack.Star.add(client, channel: "C1234567890")
  """
  @spec add(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :add

  @doc """
  Lists items starred by the user.

  https://api.slack.com/methods/stars.list

  ## Examples

      Slack.Star.list(client)
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Remove a star from an item.
  Star messages and files.

  https://api.slack.com/methods/stars.remove

  ## Examples

      Slack.Star.remove(client, channel: "C1234567890")
  """
  @spec remove(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :remove
end
