defmodule Slack.Request do
  defmacro __using__(_opts) do
    quote do
      import Slack.Request
    end
  end

  @doc """
  Define a method `method` that makes a GET request to the module's base
  endpoint plus the method name: e.g. `baseEndpoint.methodName`.
  """
  defmacro defget(method) do
    quote do
      defrequest unquote(method)(client, query \\ []) do
        params = query |> Keyword.put(:token, client.token)
        Slack.get "#{@base}.#{unquote(method)}", [], params: params
      end
    end
  end

  @doc """
  Define a method `method` that makes a POST request to the module's base
  endpoint plus the method name: e.g. `baseEndpoint.methodName`.
  """
  defmacro defpost(method) do
    quote do
      defrequest unquote(method)(client, body \\ []) do
        Slack.post "#{@base}.#{unquote(method)}",
                   {:form, body},
                   [],
                   params: [token: client.token]
      end
    end
  end

  @doc """
  Define a method `method` that makes a request (the block must return a call
  to an HTTPoison request method).

  The return of the request will be pattern matched against Slack's standard
  `%{"ok" => true}` message format, and will return `{:ok, response}` when
  the body matches `%{"ok" => true}`, or `{:error, response}` otherwise.

  In the case of an actual failed request, `{:error, HTTPoison.Error.t}` will be
  returned.
  """
  defmacro defrequest(signature, do: body) do
    quote do
      def unquote(signature) do
        case unquote(body) do
          {:ok, response = %HTTPoison.Response{body: %{"ok" => true}}} ->
            {:ok, response}
          {:ok, response} ->
            {:error, response}
          {:error, error} ->
            {:error, error}
        end
      end
    end
  end
end
