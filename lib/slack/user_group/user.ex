defmodule Slack.UserGroup.User do
  @moduledoc """
  Functions for working with users in user groups
  """

  @base "usergroups.users"

  use Slack.Request

  @doc """
  List users in a usergroup.

  https://api.slack.com/methods/usergroups.users.list

  ## Examples

      Slack.UserGroup.list(client, usergroup: "S0604QSJC")
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Update the list of users in a user group.

  https://api.slack.com/methods/usergroups.users.update

  ## Examples

      Slack.UserGroup.update(
        client, usergroup: "S0604QSJC", user: "U060R4BJ4,U060RNRCZ")
  """
  @spec update(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :update
end
