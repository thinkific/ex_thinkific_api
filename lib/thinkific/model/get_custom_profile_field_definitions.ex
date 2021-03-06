# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.GetCustomProfileFieldDefinitions do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"items",
    :"meta"
  ]

  @type t :: %__MODULE__{
    :"items" => [CustomProfileFieldDefinitionsResponse],
    :"meta" => Meta
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.GetCustomProfileFieldDefinitions do
  import Thinkific.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"items", :list, Thinkific.Model.CustomProfileFieldDefinitionsResponse, options)
    |> deserialize(:"meta", :struct, Thinkific.Model.AdminMeta, options)
  end
end
