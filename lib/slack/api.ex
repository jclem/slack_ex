defmodule Slack.API do
  @moduledoc """
  Functions for checking calling code
  """

  @base "api"

  use Slack.Request

  @doc """
  Test calling code.

  https://api.slack.com/methods/api.test

  ## Examples

      Slack.client(token)
      |> Slack.API.test(foo: "bar")
  """
  @spec test(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defpost :test
end
