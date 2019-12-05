defmodule Slack.DND do
  @moduledoc """
  Functions for working with the user's Do Not Disturb session
  """

  @base "dnd"

  use Slack.Request

  @doc """
  End the user's Do Not Disturb session.

  https://api.slack.com/methods/dnd.endDnd

  ## Examples

      Slack.client(token)
      |> Slack.DND.endDnd
  """
  @spec endDnd(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :endDnd

  @doc """
  End the user's snooze mode.

  https://api.slack.com/methods/dnd.endSnooze

  ## Examples

      Slack.client(token)
      |> Slack.DND.endSnooze
  """
  @spec endSnooze(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :endSnooze

  @doc """
  Get information on the user's Do Not Disturb settings.

  https://api.slack.com/methods/dnd.info

  ## Examples

      Slack.client(token)
      |> Slack.DND.info(user: "U1234")
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info

  @doc """
  Adjust the snooze duration for the user's Do Not Disturb settings.

  https://api.slack.com/methods/dnd.setSnooze

  ## Examples

      Slack.client(token)
      |> Slack.DND.setSnooze(num_minutes: 30)
  """
  @spec setSnooze(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :setSnooze

  @doc """
  Get information about Do Not Disturb settings for a team.

  https://api.slack.com/methods/dnd.teamInfo

  ## Examples

      Slack.client(token)
      |> Slack.DND.teamInfo
  """
  @spec teamInfo(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :teamInfo
end
