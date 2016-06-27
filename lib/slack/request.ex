defmodule Slack.Request do
  defmacro __using__(_opts) do
    quote do
      import Slack.Request
    end
  end

  defmacro defget(method) do
    quote do
      defrequest unquote(method)(client, query \\ []) do
        params = query |> Keyword.put(:token, client.token)
        Slack.get "#{@base}.#{unquote(method)}", [], params: params
      end
    end
  end

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
