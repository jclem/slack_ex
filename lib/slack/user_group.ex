defmodule Slack.UserGroup do
  @moduledoc """
  Functions for a team's User Groups
  """

  @base "usergroups"

  use Slack.Request

  @doc """
  Create a new user group.

  https://api.slack.com/methods/usergroups.create

  ## Examples

      Slack.UserGroup.create(client, name: "usergroup")
  """
  @spec create(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :create

  @doc """
  Disable a user group.

  https://api.slack.com/methods/usergroups.disable

  ## Examples

      Slack.UserGroup.disable(client, usergroup: "S0604QSJC")
  """
  @spec disable(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :disable

  @doc """
  Enable a user group.

  https://api.slack.com/methods/usergroups.enable

  ## Examples

      Slack.UserGroup.enable(client, usergroup: "S0604QSJC")
  """
  @spec enable(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :enable

  @doc """
  List user groups for the team.

  https://api.slack.com/methods/usergroups.list

  ## Examples

      Slack.UserGroup.list(client)
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Update a user group.

  https://api.slack.com/methods/usergroups.update

  ## Examples

      Slack.UserGroup.update(client, usergroup: "S0604QSJC", name: "newname")
  """
  @spec update(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :update
end
