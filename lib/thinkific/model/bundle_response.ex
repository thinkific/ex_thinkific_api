# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.BundleResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"description",
    :"tagline",
    :"banner_image_url",
    :"course_ids",
    :"bundle_card_image_url"
  ]

  @type t :: %__MODULE__{
    :"id" => float(),
    :"name" => String.t,
    :"description" => String.t,
    :"tagline" => String.t,
    :"banner_image_url" => String.t,
    :"course_ids" => [float()],
    :"bundle_card_image_url" => String.t
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.BundleResponse do
  def decode(value, _options) do
    value
  end
end
