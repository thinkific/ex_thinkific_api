# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.CourseReviewResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"rating",
    :"title",
    :"review_text",
    :"user_id",
    :"course_id",
    :"approved",
    :"created_at"
  ]

  @type t :: %__MODULE__{
    :"id" => float(),
    :"rating" => float(),
    :"title" => String.t,
    :"review_text" => String.t,
    :"user_id" => float(),
    :"course_id" => float(),
    :"approved" => boolean(),
    :"created_at" => DateTime.t
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.CourseReviewResponse do
  def decode(value, _options) do
    value
  end
end
