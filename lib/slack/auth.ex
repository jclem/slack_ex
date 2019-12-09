defmodule Slack.Auth do
  @moduledoc """
  Functions for dealing with access tokens
  """

  @base "auth"

  use Slack.Request

  @doc """
  Revoke an access token.

  https://api.slack.com/methods/auth.revoke

  ## Examples

      Slack.client(token)
      |> Slack.Auth.revoke
  """
  @spec revoke(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defrequest revoke(client, body \\ []) do
    body = body |> Keyword.put(:token, client.token)
    Slack.post "#{@base}.revoke", {:form, body}
  end

  @doc """
  Check and identity an access token.

  https://api.slack.com/methods/auth.test

  ## Examples

      Slack.client(token)
      |> Slack.Auth.test
  """
  @spec test(Slack.Client.t, Keyword.t) :: Slack.slack_response
  defrequest test(client, body \\ []) do
    body = body |> Keyword.put(:token, client.token)
    Slack.get "#{@base}.test", {:form, body}
  end
end
