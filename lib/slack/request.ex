defmodule Slack.Request do
  defmacro __using__(_opts) do
    quote do
      import Slack.Request
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
