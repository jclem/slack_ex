defmodule Slack.User do
  @moduledoc """
  Functions for working with Slack users
  """

  @base "users"

  use Slack.Request

  @doc """
  Get information about a user's presence.

  https://api.slack.com/methods/users.getPresence

  ## Examples

      Slack.User.getPresence(client, user: "U1234567890")
  """
  @spec getPresence(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :getPresence

  @doc """
  Get the token holder's identity.

  https://api.slack.com/methods/users.identity

  ## Examples

      Slack.User.identity(client)
  """
  @spec identity(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :identity

  @doc """
  Get information about a user.

  https://api.slack.com/methods/users.info

  ## Examples

      Slack.User.info(client, user: "U1234567890")
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info

  @doc """
  List users on a team.

  https://api.slack.com/methods/users.list

  ## Examples

      Slack.User.list(client)
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Let the messaging server know the user is active.

  https://api.slack.com/methods/users.setActive

  ## Examples

      Slack.User.setActive(client)
  """
  @spec setActive(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :setActive

  @doc """
  Set the calling user's presence.

  https://api.slack.com/methods/users.setPresence

  ## Examples

      Slack.User.setPresence(client, presence: "away")
  """
  @spec setPresence(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :setPresence
end
