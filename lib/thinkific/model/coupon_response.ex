# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.CouponResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"code",
    :"note",
    :"quantity_used",
    :"quantity",
    :"promotion_id",
    :"created_at"
  ]

  @type t :: %__MODULE__{
    :"id" => float(),
    :"code" => String.t,
    :"note" => String.t,
    :"quantity_used" => float(),
    :"quantity" => float(),
    :"promotion_id" => float(),
    :"created_at" => DateTime.t
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.CouponResponse do
  def decode(value, _options) do
    value
  end
end
