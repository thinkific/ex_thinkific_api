# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.CreateCourseReviewRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"rating",
    :"title",
    :"review_text",
    :"user_id",
    :"approved"
  ]

  @type t :: %__MODULE__{
    :"rating" => float(),
    :"title" => String.t,
    :"review_text" => String.t,
    :"user_id" => float(),
    :"approved" => boolean()
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.CreateCourseReviewRequest do
  def decode(value, _options) do
    value
  end
end
