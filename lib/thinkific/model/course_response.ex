# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.CourseResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"slug",
    :"subtitle",
    :"product_id",
    :"description",
    :"course_card_text",
    :"intro_video_youtube",
    :"contact_information",
    :"keywords",
    :"duration",
    :"banner_image_url",
    :"course_card_image_url",
    :"intro_video_wistia_identifier",
    :"administrator_user_ids",
    :"chapter_ids",
    :"reviews_enabled",
    :"user_id",
    :"instructor_id"
  ]

  @type t :: %__MODULE__{
    :"id" => float(),
    :"name" => String.t,
    :"slug" => String.t,
    :"subtitle" => String.t,
    :"product_id" => float(),
    :"description" => String.t,
    :"course_card_text" => String.t,
    :"intro_video_youtube" => String.t,
    :"contact_information" => String.t,
    :"keywords" => String.t,
    :"duration" => String.t,
    :"banner_image_url" => String.t,
    :"course_card_image_url" => String.t,
    :"intro_video_wistia_identifier" => String.t,
    :"administrator_user_ids" => [float()],
    :"chapter_ids" => [float()],
    :"reviews_enabled" => boolean(),
    :"user_id" => float(),
    :"instructor_id" => float()
  }
end

defimpl Poison.Decoder, for: Thinkific.Model.CourseResponse do
  def decode(value, _options) do
    value
  end
end
