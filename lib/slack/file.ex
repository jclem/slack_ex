defmodule Slack.File do
  @moduledoc """
  Functions for working with files in Slack
  """

  @base "files"

  use Slack.Request

  @doc """
  Delete a file from the team.

  https://api.slack.com/methods/files.delete

  ## Examples

      Slack.client(token)
      |> Slack.File.delete(file: "F1234467890")
  """
  @spec delete(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :delete

  @doc """
  Get information about a file.

  https://api.slack.com/methods/files.info

  ## Examples

      Slack.client(token)
      |> Slack.File.info(file: "F1234467890")
  """
  @spec info(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :info

  @doc """
  List files within the team.

  https://api.slack.com/methods/files.list

  ## Examples

      Slack.client(token)
      |> Slack.File.list
  """
  @spec list(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defget :list

  @doc """
  Disable public sharing for a file.

  https://api.slack.com/methods/files.revokePublicURL

  ## Examples

      Slack.client(token)
      |> Slack.File.revokePublicURL(file: "F1234467890")
  """
  @spec revokePublicURL(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :revokePublicURL

  @doc """
  Enable public sharing for a file.

  https://api.slack.com/methods/files.sharedPublicURL

  ## Examples

      Slack.client(token)
      |> Slack.File.sharedPublicURL(file: "F1234467890")
  """
  @spec sharedPublicURL(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :sharedPublicURL

  @doc """
  Upload a file.

  https://api.slack.com/methods/files.upload

  ## Examples

      Slack.client(token)
      |> Slack.File.upload(content: "File contents")
  """
  @spec upload(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :upload
end
