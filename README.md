# Thinkific API's Elixir SDK

Thinkific's public API can be used to integrate your application with your Thinkific site.

## Installation

This package can be installed by adding `ex_thinkific_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_thinkific_api, "~> 0.1.0"}]
end
```

The docs can be found at [Thinkific API SDK Hex Docs](https://hexdocs.pm/ex_thinkific_api/readme.html).

## How to use it

### Admin API

#### Connection

* You can either use token based:

```elixir
conn = Thinkific.Connection.new(:admin_api, "basic-surf-academy", %{"Authorization" => "Bearer 1360ddc6-4029-47ec-a832-e5f1e60f8d98"})
```

* Either API Key authorization:

```elixir
conn = Thinkific.Connection.new(:admin_api, "basic-surf-academy", %{"X-Auth-API-Key" => "9eda19c55435829ef301b1979c96f96a"})
```

#### Fetching data example

In order to get a list of courses:

```elixir
# In order to define conn, check the Connection section above
Thinkific.Api.Courses.get_courses(conn)
```

### Webhooks API

#### Connection

* Only token based authentication can be used:

```elixir
conn = Thinkific.Connection.new(:webhooks_api, "basic-surf-academy", %{"Authorization" => "Bearer 330ec662-4da4-4809-bf9f-10dfd98c8c28"})
```

#### Fetching data example

In order to get a list of courses:

```elixir
# In order to define conn, check the Connection section above
Thinkific.Api.Webhooks.get_webhooks(conn)
```

#### Creating data example

```elixir
# In order to define conn, check the Connection section above
Thinkific.Api.Webhooks.create_webhook(
  conn, [body: %Thinkific.Model.WebhookRequest{topic: "user.signin", target_url: "https://google.com"}]
)
```