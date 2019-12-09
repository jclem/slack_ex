defmodule Slack do
  @moduledoc """
  A client for the Slack API.

  This library exports a module for each namespace on the Slack API. For each
  method in that namespace, a function is exported from its parent module.
  Nested namespaces are in nested modules.

  When looking at the Slack API documentation, if you see a method called
  `usergroups.users.list`, you know that you can call this API method with the
  function call `Slack.UserGroup.User.list`. Note that all module names are
  singular, regardless of whether they are singular or plural in the Slack API.

  ## Authentication

  For Slack API endpoints that require an authentication token (which is all of
  them save some special OAuth endpoints), a `Slack.Client.t` must be passed
  in as the first argument to a function call:

      access_token
      |> Slack.client # Creates a new `Slack.Client.t`
      |> Slack.Channel.list

  While the typespec currently expects a `Slack.Client.t`, anything can
  technically passed in on which the function can call `client.token`.

  ## Request Methods

  The Slack API allows clients to either issue `GET` or `POST` requests for any
  API method. In this client, `POST` is used whenever the request can
  potentially create or change data. Otherwise, a `GET` is used.

  ## Return Values

  For any successful method, the Slack API returns a key `"okay"` in the
  response body with `true` as the value. When handling a response, this library
  checks for this value and if it is present, returns `{:ok, response_body}`.

  An `HTTPoison.Response.t` is only returned when a method call fails, in a
  tuple: `{:error, response}`.

  ## Arbitrary Request

  To make some arbitrary request that is not in this library, you can use
  special HTTP methods on the `Slack` module:

      {:ok, response} =
        Slack.get "namespace.method", [], params: [token: access_token]
  """
  use HTTPoison.Base

  @type slack_response ::
    {:ok, map} |
    {:error, HTTPoison.Response.t} |
    {:error, HTTPoison.Error.t}

  @endpoint "https://slack.com/api"

  def client(token), do: %Slack.Client{token: token}

  def process_url("/" <> url), do: process_url(url)
  def process_url(url), do: "#{@endpoint}/#{url}"
  def process_response_body(body), do: Poison.decode!(body)
end
