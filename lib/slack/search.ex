defmodule Slack.Search do
  @moduledoc """
  Functions for searching
  """

  @base "search"

  use Slack.Request

  @doc """
  Search messages and files.

  https://api.slack.com/methods/search.all

  ## Examples

      Slack.Search.all(client, query: "My query")
  """
  @spec all(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :all

  @doc """
  Search files.

  https://api.slack.com/methods/search.files

  ## Examples

      Slack.Search.files(client, query: "My query")
  """
  @spec files(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :files

  @doc """
  Search messages.

  https://api.slack.com/methods/search.messages

  ## Examples

      Slack.Search.messages(client, query: "My query")
  """
  @spec messages(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :messages
end
