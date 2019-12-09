defmodule Slack.Channel do
  @moduledoc """
  A publicly listed communication channel in a team
  """

  @base "channels"

  use Slack.Request

  @doc """
  Archive a channel.

  https://api.slack.com/methods/channels.archive

  ## Examples

      Slack.client(token)
      |> Slack.Channel.archive(channel: "C1234567890")
  """
  @spec archive(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :archive

  @doc """
  Create a channel.

  https://api.slack.com/methods/channels.create

  ## Examples

      Slack.client(token)
      |> Slack.Channel.create(name: "mychannel")
  """
  @spec create(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :create

  @doc """
  Retrieve channel history.

  https://api.slack.com/methods/channels.history

  ## Examples

      Slack.client(token)
      |> Slack.Channel.history(channel: "C1234567890")
  """
  @spec history(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :history

  @doc """
  Get channel info.

  https://api.slack.com/methods/channels.info

  ## Examples

      Slack.client(token)
      |> Slack.Channel.info(channel: "C1234567890")
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info

  @doc """
  Invite a user to a channel.

  https://api.slack.com/methods/channels.invite

  ## Examples

      Slack.client(token)
      |> Slack.Channel.invite(channel: "C1234567890", user: "U1234567890")
  """
  @spec invite(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :invite

  @doc """
  Join a channel.

  https://api.slack.com/methods/channels.join

  ## Examples

      Slack.client(token)
      |> Slack.Channel.join(channel: "C1234567890")
  """
  @spec join(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :join

  @doc """
  Kick a user from a channel.

  https://api.slack.com/methods/channels.kick

  ## Examples

      Slack.client(token)
      |> Slack.Channel.kick(channel: "C1234567890", user: "U1234567890")
  """
  @spec kick(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :kick

  @doc """
  Leave a channel.

  https://api.slack.com/methods/channels.leave

  ## Examples

      Slack.client(token)
      |> Slack.Channel.leave(channel: "C1234567890")
  """
  @spec leave(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :leave

  @doc """
  List all of the channels in a team.

  https://api.slack.com/methods/channels.list

  ## Examples

      Slack.client(token)
      |> Slack.Channel.list
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Move the read cursor in a channel.

  https://api.slack.com/methods/channels.mark

  ## Examples

      Slack.client(token)
      |> Slack.Channel.mark(channel: "C1234567890", ts: "1234567890.123456")
  """
  @spec mark(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :mark

  @doc """
  Rename a channel.

  https://api.slack.com/methods/channels.rename

  ## Examples

      Slack.client(token)
      |> Slack.Channel.rename(channel: "C1234567890", name: "newname")
  """
  @spec rename(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :rename

  @doc """
  Set the purpose of a channel.

  https://api.slack.com/methods/channels.setPurpose

  ## Examples

      Slack.client(token)
      |> Slack.Channel.setPurpose(channel: "C1234567890", purpose: "Purpose")
  """
  @spec setPurpose(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :setPurpose

  @doc """
  Set the topic of a channel.

  https://api.slack.com/methods/channels.setTopic

  ## Examples

      Slack.client(token)
      |> Slack.Channel.setTopic(channel: "C1234567890", topic: "Topic")
  """
  @spec setTopic(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :setTopic

  @doc """
  Unarchive a channel.

  https://api.slack.com/methods/channels.unarchive

  ## Examples

      Slack.client(token)
      |> Slack.Channel.unarchive(channel: "C1234567890")
  """
  @spec unarchive(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :unarchive
end
