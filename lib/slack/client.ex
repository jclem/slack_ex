defmodule Slack.Client do
  @moduledoc """
  A struct containing an authorization token
  """

  @enforce_keys [:token]

  defstruct token: ""

  @type t :: %__MODULE__{token: String.t}
end
