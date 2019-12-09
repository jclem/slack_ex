defmodule Slack.Bot do
  @moduledoc """
  Functions for getting information about bots
  """

  @base "bots"

  use Slack.Request

  @doc """
  Get info for a bot.

  https://api.slack.com/methods/bots.info

  ## Examples

      Slack.client(token)
      |> Slack.Bot.info(bot: "B12345678")
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info
end
