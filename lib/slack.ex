defmodule Slack do
  use HTTPoison.Base

  @type response :: {:ok, HTTPoison.Response.t} | {:errorf, HTTPoison.Response.t} | {:error, HTTPoison.Error.t}

  @endpoint "https://slack.com/api"

  def client(token), do: %Slack.Client{token: token}

  def process_url("/" <> url), do: process_url(url)
  def process_url(url), do: "#{@endpoint}/#{url}"
  defp process_response_body(body), do: Poison.decode!(body)
end
