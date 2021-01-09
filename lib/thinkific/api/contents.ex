# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Api.Contents do
  @moduledoc """
  API calls for all endpoints tagged `Contents`.
  """

  alias Thinkific.Connection
  import Thinkific.RequestBuilder


  @doc """
  getContentByID
  Retrieves a Content

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id (float()): ID of the Content in the form of an integer
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.ContentResponse{}} on success
  {:error, info} on failure
  """
  @spec get_content_by_id(Tesla.Env.client, float(), keyword()) :: {:ok, Thinkific.Model.ContentResponse.t} | {:error, Tesla.Env.t}
  def get_content_by_id(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/contents/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.ContentResponse{})
  end
end
