defmodule Slack.Group do
  @moduledoc """
  Functions for working with private channels (groups)
  """

  @base "groups"

  use Slack.Request

  @doc """
  Archive a private channel.

  https://api.slack.com/methods/groups.archive

  ## Examples

      Slack.Group.archive(client, channel: "G1234567890")
  """
  @spec archive(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :archive

  @doc """
  Close a private channel.

  https://api.slack.com/methods/groups.close

  ## Examples

      Slack.Group.close(client, channel: "G1234567890")
  """
  @spec close(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :close

  @doc """
  Create a private channel.

  https://api.slack.com/methods/groups.create

  ## Examples

      Slack.Group.create(client, name: "newchannel")
  """
  @spec create(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :create

  @doc """
  Replace a private channel.

  https://api.slack.com/methods/groups.createChild

  ## Examples

      Slack.Group.createChild(client, channel: "G1234567890")
  """
  @spec createChild(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :createChild

  @doc """
  Get the history of a private channel.

  https://api.slack.com/methods/groups.history

  ## Examples

      Slack.Group.history(client, channel: "G1234567890")
  """
  @spec history(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :history

  @doc """
  Get the info of a private channel.

  https://api.slack.com/methods/groups.info

  ## Examples

      Slack.Group.info(client, channel: "G1234567890")
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info

  @doc """
  Invite a user to a private channel.

  https://api.slack.com/methods/groups.invite

  ## Examples

      Slack.Group.invite(client, channel: "G1234567890", user: "U1234567890")
  """
  @spec invite(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :invite

  @doc """
  Kick a user from a private channel.

  https://api.slack.com/methods/groups.kick

  ## Examples

      Slack.Group.kick(client, channel: "G1234567890", user: "U1234567890")
  """
  @spec kick(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :kick

  @doc """
  Leave a private channel.

  https://api.slack.com/methods/groups.leave

  ## Examples

      Slack.Group.leave(client, channel: "G1234567890")
  """
  @spec leave(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :leave

  @doc """
  List private channels.

  https://api.slack.com/methods/groups.list

  ## Examples

      Slack.Group.list(client)
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Move the read cursor in a private channel.

  https://api.slack.com/methods/groups.mark

  ## Examples

      Slack.Group.mark(client, channel: "G1234567890", ts: 1234567890.123456)
  """
  @spec mark(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :mark

  @doc """
  Open a private channel.

  https://api.slack.com/methods/groups.open

  ## Examples

      Slack.Group.open(client, channel: "G1234567890")
  """
  @spec open(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :open

  @doc """
  Rename a private channel.

  https://api.slack.com/methods/groups.rename

  ## Examples

      Slack.Group.rename(client, channel: "G1234567890", name: "newname")
  """
  @spec rename(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :rename

  @doc """
  Set the purpose of a private channel.

  https://api.slack.com/methods/groups.setPurpose

  ## Examples

      Slack.Group.setPurpose(client, channel: "G1234567890", purpose: "purpose")
  """
  @spec setPurpose(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :setPurpose

  @doc """
  Set the topic of a private channel.

  https://api.slack.com/methods/groups.setTopic

  ## Examples

      Slack.Group.setTopic(client, channel: "G1234567890", topic: "topic")
  """
  @spec setTopic(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :setTopic

  @doc """
  Unarchive a private channel.

  https://api.slack.com/methods/groups.unarchive

  ## Examples

      Slack.Group.unarchive(client, channel: "G1234567890")
  """
  @spec unarchive(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :unarchive
end
