defmodule Slack.Client do
  @moduledoc """
  A struct containing an authorization token
  """

  defstruct token: ""

  @type t :: %__MODULE__{token: String.t}
end
