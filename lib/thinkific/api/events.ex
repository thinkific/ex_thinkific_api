# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Api.Events do
  @moduledoc """
  API calls for all endpoints tagged `Events`.
  """

  alias Thinkific.Connection
  import Thinkific.RequestBuilder


  @doc """
  getEventByID
  This endpoint returns the Event identified by the provided id.

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id (String.t): ID of the Event in the form of an string.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.EventResponse{}} on success
  {:error, info} on failure
  """
  @spec get_event_by_id(Tesla.Env.client, String.t, keyword()) :: {:ok, Thinkific.Model.EventResponse.t} | {:error, Tesla.Env.t}
  def get_event_by_id(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/events/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.EventResponse{})
  end
end
