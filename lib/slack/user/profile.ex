defmodule Slack.User.Profile do
  @moduledoc """
  Functions for working with user profiles
  """

  @base "users.profile"

  use Slack.Request

  @doc """
  Get the profile information of a user.

  https://api.slack.com/methods/users.profile.get

  ## Examples

      Slack.User.Profile.get(client, user: "U1234567890")
  """
  @spec get(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :get

  @doc """
  Set the profile information of a user.

  https://api.slack.com/methods/users.profile.set

  ## Examples

      Slack.User.Profile.set(client, user: "U1234567890", name: "Name")
  """
  @spec set(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :set
end
