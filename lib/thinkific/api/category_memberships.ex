# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Api.CategoryMemberships do
  @moduledoc """
  API calls for all endpoints tagged `CategoryMemberships`.
  """

  alias Thinkific.Connection
  import Thinkific.RequestBuilder


  @doc """
  addProductsToCategory
  Create one or more Products to a Category

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id ([float()]): ID of the Category in the form of an integer
  - body (MembershipsRequest): An array of the IDs of the Products that should be added to the Category as integers.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec add_products_to_category(Tesla.Env.client, list(Float.t), Thinkific.Model.MembershipsRequest.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def add_products_to_category(connection, id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/collection_memberships/#{id}")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  deleteProductsByID
  Delete one or more Products from a Category.

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id ([float()]): ID of the Category in the form of an integer
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_products_by_id(Tesla.Env.client, list(Float.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_products_by_id(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/collection_memberships/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
