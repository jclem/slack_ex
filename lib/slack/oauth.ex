defmodule Slack.OAuth do
  @moduledoc """
  Functions for handling OAuth code/token exchange
  """

  @base "oauth"

  use Slack.Request

  @doc """
  Exchange an OAuth code for a Slack API access token.

  https://api.slack.com/methods/oauth.access

  ## Examples

      Slack.OAuth.access(
        client_id: "client_id", client_secret: "client_secret", code: "code")
  """
  @spec access(Keyword.t) :: Slack.slack_response
  defrequest access(params \\ []) do
    Slack.get "#{@base}.access", [], params: params
  end
end
