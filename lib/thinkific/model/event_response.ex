# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.EventResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"resource",
    :"action",
    :"created_at",
    :"payload"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"resource" => String.t,
    :"action" => String.t,
    :"created_at" => String.t,
    :"payload" => Object
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.EventResponse do
  import Thinkific.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"payload", :struct, Thinkific.Model.Object, options)
  end
end
