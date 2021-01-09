# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.WebhooksMeta do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"page"
  ]

  @type t :: %__MODULE__{
    :"page" => Pagination
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.WebhooksMeta do
  import Thinkific.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"page", :struct, Thinkific.Model.WebhooksPagination, options)
  end
end
