defmodule Slack.RTM do
  @moduledoc """
  Functions for creating Real Time Messaging API sessions
  """

  @base "rtm"

  use Slack.Request

  @doc """
  Start an RTM API session.

  https://api.slack.com/methods/rtm.start

  ## Examples

      Slack.RTM.start(client)
  """
  @spec start(Slack.Client.t, Keyword.t) :: Slack.response
  defpost :start
end
