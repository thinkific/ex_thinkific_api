# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.ExternalOrderRequest do
  @moduledoc """
  External Order Request
  """

  @derive [Poison.Encoder]
  defstruct [
    :"payment_provider",
    :"user_id",
    :"product_id",
    :"order_type",
    :"transaction"
  ]

  @type t :: %__MODULE__{
    :"payment_provider" => String.t,
    :"user_id" => float(),
    :"product_id" => float(),
    :"order_type" => OrderType,
    :"transaction" => ExternalOrderTransaction
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.ExternalOrderRequest do
  import Thinkific.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"order_type", :struct, Thinkific.Model.OrderType, options)
    |> deserialize(:"transaction", :struct, Thinkific.Model.ExternalOrderTransaction, options)
  end
end
