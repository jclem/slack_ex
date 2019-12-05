defmodule Slack.Emoji do
  @moduledoc """
  Functions for working with a team's custom emoji
  """

  @base "emoji"

  use Slack.Request

  @doc """
  List the custom emoji for a team.

  https://api.slack.com/methods/emoji.list

  ## Examples

      Slack.client(token)
      |> Slack.Emoji.list
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list
end
