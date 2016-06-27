defmodule Slack.Realtime do
  @moduledoc """
  Provides an interface for connecting to Slack via its Real Time Messaging API,
  reacting to events from it, and sending messages.
  """

  use GenServer

  defmacro __using__(_opts) do
    quote do
      def start_link(token) do
        {:ok, %{body: %{"url" => url}}} =
          token
          |> Slack.client
          |> Slack.RTM.start()

        {:ok, conn_pid} = :gun.open(url, 443)
        {:ok, _} = :gun.await_up(conn_pid)
        :gun.ws_upgrade(conn_pid, url)
      end
    end
  end
end
