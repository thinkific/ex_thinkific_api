# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Model.ContentableType do
  @moduledoc """
  The type of the Content
  """

  @derive [Poison.Encoder]
  defstruct [

  ]

  @type t :: %__MODULE__{

  }
end

defimpl Poison.Decoder, for: Thinkific.Model.ContentableType do
  def decode(value, _options) do
    value
  end
end
