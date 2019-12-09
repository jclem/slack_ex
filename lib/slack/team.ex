defmodule Slack.Team do
  @moduledoc """
  Functions for working with a Slack team
  """

  @base "team"

  use Slack.Request

  @doc """
  Get access logs for a team.

  https://api.slack.com/methods/team.accessLogs

  ## Examples

      Slack.Team.accessLogs(client)
  """
  @spec accessLogs(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :accessLogs

  @doc """
  Get billabale information for user or users on a team.

  https://api.slack.com/methods/team.billableInfo

  ## Examples

      Slack.Team.billableInfo(client, user: "U1234567890")
  """
  @spec billableInfo(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :billableInfo

  @doc """
  Get basic team info.

  https://api.slack.com/methods/team.info

  ## Examples

      Slack.Team.info(client)
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info

  @doc """
  Get integration activity logs for the team.

  https://api.slack.com/methods/team.integrationLogs

  ## Examples

      Slack.Team.integrationLogs(client)
  """
  @spec integrationLogs(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :integrationLogs
end
