# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias Thinkific.Connection
  import Thinkific.RequestBuilder


  @doc """
  createGroup
  Creates a group

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (GroupRequest): Group

  ## Returns

  {:ok, %Thinkific.Model.GroupResponse{}} on success
  {:error, info} on failure
  """
  @spec create_group(Tesla.Env.client, keyword()) :: {:ok, Thinkific.Model.GroupResponse.t} | {:error, Tesla.Env.t}
  def create_group(connection, opts \\ []) do
    optional_params = %{
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.GroupResponse{})
  end

  @doc """
  getGroup
  Retrieves a specific group

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id (float()): The ID of the Group to fetch.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.GroupResponse{}} on success
  {:error, info} on failure
  """
  @spec get_group(Tesla.Env.client, float(), keyword()) :: {:ok, Thinkific.Model.GroupResponse.t} | {:error, Tesla.Env.t}
  def get_group(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/groups/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.GroupResponse{})
  end

  @doc """
  getGroupAnalysts
  Retrieves a list of group analysts

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - group_id (float()): ID of the Group in the form of an integer.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.GetGroupAnalystsResponse{}} on success
  {:error, info} on failure
  """
  @spec get_group_analysts(Tesla.Env.client, float(), keyword()) :: {:ok, Thinkific.Model.GetGroupAnalystsResponse.t} | {:error, Tesla.Env.t}
  def get_group_analysts(connection, group_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/groups/#{group_id}/analysts")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.GetGroupAnalystsResponse{})
  end

  @doc """
  getGroups
  Retrieves a list of groups

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (float()): The page within the collection to fetch.
    - :limit (float()): The number of items to be returned.

  ## Returns

  {:ok, %Thinkific.Model.GetGroupsResponse{}} on success
  {:error, info} on failure
  """
  @spec get_groups(Tesla.Env.client, keyword()) :: {:ok, Thinkific.Model.GetGroupsResponse.t} | {:error, Tesla.Env.t}
  def get_groups(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"limit" => :query
    }
    %{}
    |> method(:get)
    |> url("/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.GetGroupsResponse{})
  end

  @doc """
  postGroupAnalysts
  Assign Group Analysts to a group. Users need to be assigned the Group Analyst (group_analyst) role.

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - group_id (float()): ID of the Group in the form of an integer.
  - opts (KeywordList): [optional] Optional parameters
    - :body (GroupAddAnalystRequest): Group Analyst

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec post_group_analysts(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def post_group_analysts(connection, group_id, opts \\ []) do
    optional_params = %{
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/groups/#{group_id}/analysts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  removeAnalystFromGroup
  Remove an analyst from a group

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - group_id (float()): ID of the Group in the form of an integer.
  - user_id (float()): ID of the User in the form of an integer.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec remove_analyst_from_group(Tesla.Env.client, float(), float(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_analyst_from_group(connection, group_id, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/groups/#{group_id}/analysts/#{user_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
