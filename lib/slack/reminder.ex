defmodule Slack.Reminder do
  @moduledoc """
  Functions for Reminders
  """

  @base "reminders"

  use Slack.Request

  @doc """
  Create a reminder.

  https://api.slack.com/methods/reminders.add

  ## Examples

      Slack.Reminder.add(client, text: "Walk the dog")
  """
  @spec add(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :add

  @doc """
  Mark a reminder as completed.

  https://api.slack.com/methods/reminders.complete

  ## Examples

      Slack.Reminder.complete(client, reminder: "Rm12345678")
  """
  @spec complete(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :complete

  @doc """
  Delete a reminder.

  https://api.slack.com/methods/reminders.delete

  ## Examples

      Slack.Reminder.delete(client, reminder: "Rm12345678")
  """
  @spec delete(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :delete

  @doc """
  Get info on a reminder.

  https://api.slack.com/methods/reminders.info

  ## Examples

      Slack.Reminder.info(client, reminder: "Rm12345678")
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info

  @doc """
  List the user's reminders.

  https://api.slack.com/methods/reminders.list

  ## Examples

      Slack.Reminder.list(client)
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list
end
