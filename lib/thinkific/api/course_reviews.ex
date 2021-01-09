# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Api.CourseReviews do
  @moduledoc """
  API calls for all endpoints tagged `CourseReviews`.
  """

  alias Thinkific.Connection
  import Thinkific.RequestBuilder


  @doc """
  createCourseReview
  Create a course review

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - course_id (float()): ID of the Course for which the review needs to be created for.
  - body (CreateCourseReviewRequest): Course Review Attributes
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.CourseReviewResponse{}} on success
  {:error, info} on failure
  """
  @spec create_course_review(Tesla.Env.client, float(), Thinkific.Model.CreateCourseReviewRequest.t, keyword()) :: {:ok, Thinkific.Model.CourseReviewResponse.t} | {:error, Tesla.Env.t}
  def create_course_review(connection, course_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/course_reviews")
    |> add_param(:query, :"course_id", course_id)
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.CourseReviewResponse{})
  end

  @doc """
  getCourseReviewByID
  Retrieve a Course Review identified by the provided id.

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - id (float()): ID of the Course Review in the form of an integer.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Thinkific.Model.CourseReviewResponse{}} on success
  {:error, info} on failure
  """
  @spec get_course_review_by_id(Tesla.Env.client, float(), keyword()) :: {:ok, Thinkific.Model.CourseReviewResponse.t} | {:error, Tesla.Env.t}
  def get_course_review_by_id(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/course_reviews/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.CourseReviewResponse{})
  end

  @doc """
  getCourseReviews
  Retrieve a list of Course Reviews

  ## Parameters

  - connection (Thinkific.Connection): Connection to server
  - course_id (float()): ID of the Course in the form of an integer.
  - opts (KeywordList): [optional] Optional parameters
    - :page (float()): The page within the collection to fetch.
    - :limit (float()): The number of items to be returned.
    - :approved (boolean()): If true, returns only approved Course Reviews.

  ## Returns

  {:ok, %Thinkific.Model.GetCourseReviewsResponse{}} on success
  {:error, info} on failure
  """
  @spec get_course_reviews(Tesla.Env.client, float(), keyword()) :: {:ok, Thinkific.Model.GetCourseReviewsResponse.t} | {:error, Tesla.Env.t}
  def get_course_reviews(connection, course_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"limit" => :query,
      :"approved" => :query
    }
    %{}
    |> method(:get)
    |> url("/course_reviews")
    |> add_param(:query, :"course_id", course_id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Thinkific.Model.GetCourseReviewsResponse{})
  end
end
