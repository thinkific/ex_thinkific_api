# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Thinkific.Connection do
  @moduledoc """
  Handle Tesla connections for ExThinkificAPI.
  """

  use Tesla

  # Add any middleware here (authentication)
  # plug Tesla.Middleware.BaseUrl, "https://api.thinkific.com/api/public/v1"
  # plug Tesla.Middleware.Headers, [{"User-Agent", "elixir-sdk"}]
  plug(Tesla.Middleware.JSON, engine: Poison, engine_opts: [keys: :atoms])

  @doc """
  Configure an authless client connection (this is useless, unless you want to easily see unauthorized error messages)

  # Returns

  Tesla.Env.client
  """
  @spec new() :: Tesla.Env.client()
  def new do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://api.thinkific.com/api/public/v1"},
      {Tesla.Middleware.Headers, [{"User-Agent", "elixir-sdk"}]}
    ]

    Tesla.client(middleware)
  end

  @doc """
  Configure a client connection with subdomain and Authentication header
  Ie.:
  Thinkific.Connection.new("my-subdomain, "%{"Authorization" => "Bearer 1360ddc6-4029-47ec-a027-e5f1e60f4c38"})
  Thinkific.Connection.new("my-subdomain, "%{"X-Auth-API-Key" => "9icu13c55130879ef301b1975a21f27c"})

  ## Parameters

  - api (atom): Either :webhooks_api or :admin_api
  - subdomain (String): Thinkific's site subdomain
  - header (Map): Request headers(specific for the Authorization or X-Auth-API-Key)

  # Returns

  Tesla.Env.client
  """
  @spec new(atom, String, Map) :: Tesla.Env.client()
  def new(:admin_api, subdomain, %{"Authorization" => token}) do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://" <> subdomain <> ".thinkific.com/api/public/v1"},
      {Tesla.Middleware.Headers, [{"User-Agent", "elixir-sdk"}, {"Authorization", token}]}
    ]

    Tesla.client(middleware)
  end

  def new(:admin_api, subdomain, %{"X-Auth-API-Key" => api_key}) do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://" <> subdomain <> ".thinkific.com/api/public/v1"},
      {Tesla.Middleware.Headers,
       [
         {"User-Agent", "elixir-sdk"},
         {"X-Auth-API-Key", api_key},
         {"X-Auth-Subdomain", subdomain}
       ]}
    ]

    Tesla.client(middleware)
  end

  def new(:webhooks_api, subdomain, %{"Authorization" => token}) do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://" <> subdomain <> ".thinkific.com/api/v2"},
      {Tesla.Middleware.Headers, [{"User-Agent", "elixir-sdk"}, {"Authorization", token}]}
    ]

    Tesla.client(middleware)
  end

  def new(:webhooks_api, subdomain, %{"X-Auth-API-Key" => api_key}) do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://" <> subdomain <> ".thinkific.com/api/v2"},
      {Tesla.Middleware.Headers,
       [
         {"User-Agent", "elixir-sdk"},
         {"X-Auth-API-Key", api_key},
         {"X-Auth-Subdomain", subdomain}
       ]}
    ]

    Tesla.client(middleware)
  end
end
