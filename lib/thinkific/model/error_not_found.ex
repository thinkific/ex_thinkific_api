# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.ErrorNotFound do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"error"
  ]

  @type t :: %__MODULE__{
    :"error" => String.t
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.ErrorNotFound do
  def decode(value, _options) do
    value
  end
end
