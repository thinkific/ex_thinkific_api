# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias Thinkific.Connection
  import Thinkific.RequestBuilder


  @doc """
  createUser
  Create a new user

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - body (CreateUserRequest): Create user request body
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.UserResponse{}} on success
  {:error, info} on failure
  """
  @spec create_user(Tesla.Env.client, Thinkific.Model.CreateUserRequest.t, keyword()) :: {:ok, Thinkific.Model.UserResponse.t} | {:error, Tesla.Env.t}
  def create_user(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/users")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.UserResponse{})
  end

  @doc """
  deleteUserByID
  Deletes a User identified by the provided id

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id (float()): Id of the user in the form of an integer
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_user_by_id(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_user_by_id(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/users/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  getUserByID
  Retrieves a User identified by the provided id

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id (float()): Id of the user in the form of an integer
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.UserResponse{}} on success
  {:error, info} on failure
  """
  @spec get_user_by_id(Tesla.Env.client, float(), keyword()) :: {:ok, Thinkific.Model.UserResponse.t} | {:error, Tesla.Env.t}
  def get_user_by_id(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.UserResponse{})
  end

  @doc """
  getUsers
  Retrieve a list of users

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (float()): The page within the collection to fetch
    - :limit (float()): The number of items to be returned
    - :query[email] (String.t): Search Users by email.
    - :query[role] (String.t): Search Users by role.
    - :query[external_source] (String.t): Search Users by external source.
    - :query[custom_profile_field_label] (String.t): Search by custom profile field label (must be combined with custom_profile_field_value)
    - :query[custom_profile_field_value] (String.t): Search by custom profile field value (must be combined with custom_profile_field_label)
    - :query[group_id] (float()): Search by group id.

  ## Returns

  {:ok, %Thinkific.Model.GetUsersResponse{}} on success
  {:error, info} on failure
  """
  @spec get_users(Tesla.Env.client, keyword()) :: {:ok, Thinkific.Model.GetUsersResponse.t} | {:error, Tesla.Env.t}
  def get_users(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"limit" => :query,
      :"query[email]" => :query,
      :"query[role]" => :query,
      :"query[external_source]" => :query,
      :"query[custom_profile_field_label]" => :query,
      :"query[custom_profile_field_value]" => :query,
      :"query[group_id]" => :query
    }
    %{}
    |> method(:get)
    |> url("/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.GetUsersResponse{})
  end

  @doc """
  updateUserByID
  Updates the user specified by the provided id

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id (float()): Id of the user in the form of an integer
  - body (UpdateUserRequest):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.UpdateUserRequest{}} on success
  {:error, info} on failure
  """
  @spec update_user_by_id(Tesla.Env.client, float(), Thinkific.Model.UpdateUserRequest.t, keyword()) :: {:ok, Thinkific.Model.UpdateUserRequest.t} | {:error, Tesla.Env.t}
  def update_user_by_id(connection, id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/users/#{id}")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.UpdateUserRequest{})
  end
end
