defmodule Slack.File.Comment do
  @moduledoc """
  Functions for working with comments on files
  """

  @base "files.comments"

  use Slack.Request

  @doc """
  Add a comment to an existing file.

  https://api.slack.com/methods/files.comments.add

  ## Examples

      Slack.client(token)
      |> Slack.File.Comment.add(file: "F1234467890", comment: "Foo")
  """
  @spec add(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :add

  @doc """
  Delete a comment on a file.

  https://api.slack.com/methods/files.comments.delete

  ## Examples

      Slack.client(token)
      |> Slack.File.Comment.delete(file: "F1234467890", id: "Fc1234567890")
  """
  @spec delete(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :delete

  @doc """
  Edit a comment on a file.

  https://api.slack.com/methods/files.comments.edit

  ## Examples

      Slack.client(token)
      |> Slack.File.Comment.edit(
           file: "F1234467890", id: "Fc1234567890", comment: "Hello")
  """
  @spec edit(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :edit
end
