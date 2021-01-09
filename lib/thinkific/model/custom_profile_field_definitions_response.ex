# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.CustomProfileFieldDefinitionsResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"label",
    :"field_type",
    :"required"
  ]

  @type t :: %__MODULE__{
    :"id" => float(),
    :"label" => String.t,
    :"field_type" => String.t,
    :"required" => boolean()
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.CustomProfileFieldDefinitionsResponse do
  def decode(value, _options) do
    value
  end
end
