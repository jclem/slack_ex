defmodule Slack.MPIM do
  @moduledoc """
  Functions for multiparty IMs
  """

  @base "mpim"

  use Slack.Request

  @doc """
  Close a multiparty IM channel

  https://api.slack.com/methods/im.close

  ## Examples

      Slack.client(token)
      |> Slack.IM.close(channel: "G1234567890")
  """
  @spec close(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :close

  @doc """
  Get the history of a multiparty IM channel.

  https://api.slack.com/methods/im.history

  ## Examples

      Slack.client(token)
      |> Slack.IM.history(channel: "G1234567890")
  """
  @spec history(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :history

  @doc """
  List multiparty IM channels for the user.

  https://api.slack.com/methods/im.list

  ## Examples

      Slack.client(token)
      |> Slack.IM.list
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Move the read cursor in a multiparty IM channel.

  https://api.slack.com/methods/im.mark

  ## Examples

      Slack.client(token)
      |> Slack.IM.mark(channel: "G1234567890", ts: 1234567890.123456)
  """
  @spec mark(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :mark

  @doc """
  Open a multiparty IM channel with a user.

  https://api.slack.com/methods/im.open

  ## Examples

      Slack.client(token)
      |> Slack.IM.open(user: "U1234567890,U2345678901")
  """
  @spec open(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :open
end
