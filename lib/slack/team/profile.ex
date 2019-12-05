defmodule Slack.Team.Profile do
  @moduledoc """
  Functions for team profiles
  """

  @base "team.profile"

  use Slack.Request

  @doc """
  Get the profile field definitions for the team.

  https://api.slack.com/methods/team.profile.get

  ## Examples

      Slack.Team.Profile.get(client)
  """
  @spec get(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :get
end
