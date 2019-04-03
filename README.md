# catalog-api-client

CatalogApiClient - the Ruby gem for the Catalog API

This API gets and orders catalog items from different cloud sources.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build catalog-api-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./catalog-api-client-1.0.0.gem
```
(for development, run `gem install --dev ./catalog-api-client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'catalog-api-client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'catalog-api-client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'catalog-api-client'

# Setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::AdminsApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
add_portfolio_item = CatalogApiClient::AddPortfolioItem.new # AddPortfolioItem | 

begin
  #Add a portfolio item to a portfolio
  api_instance.add_portfolio_item_to_portfolio(portfolio_id, add_portfolio_item)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->add_portfolio_item_to_portfolio: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost/api/catalog/v1.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CatalogApiClient::AdminsApi* | [**add_portfolio_item_to_portfolio**](docs/AdminsApi.md#add_portfolio_item_to_portfolio) | **POST** /portfolios/{portfolio_id}/portfolio_items | Add a portfolio item to a portfolio
*CatalogApiClient::AdminsApi* | [**add_to_order**](docs/AdminsApi.md#add_to_order) | **POST** /orders/{order_id}/order_items | Add an order item to an order in pending state
*CatalogApiClient::AdminsApi* | [**create_order**](docs/AdminsApi.md#create_order) | **POST** /orders | Create a new order
*CatalogApiClient::AdminsApi* | [**create_portfolio**](docs/AdminsApi.md#create_portfolio) | **POST** /portfolios | Add a new portfolio
*CatalogApiClient::AdminsApi* | [**create_portfolio_item**](docs/AdminsApi.md#create_portfolio_item) | **POST** /portfolio_items | Add a new portfolio item
*CatalogApiClient::AdminsApi* | [**destroy_portfolio**](docs/AdminsApi.md#destroy_portfolio) | **DELETE** /portfolios/{id} | Delete an existing portfolio
*CatalogApiClient::AdminsApi* | [**destroy_portfolio_item**](docs/AdminsApi.md#destroy_portfolio_item) | **DELETE** /portfolio_items/{id} | Delete an existing portfolio item
*CatalogApiClient::AdminsApi* | [**fetch_portfolio_items_with_portfolio**](docs/AdminsApi.md#fetch_portfolio_items_with_portfolio) | **GET** /portfolios/{portfolio_id}/portfolio_items | Get all portfolio items from a specific portfolio
*CatalogApiClient::AdminsApi* | [**list_order_items**](docs/AdminsApi.md#list_order_items) | **GET** /orders/{order_id}/order_items | Gets a list of items in a given order
*CatalogApiClient::AdminsApi* | [**list_orders**](docs/AdminsApi.md#list_orders) | **GET** /orders | Get a list of orders
*CatalogApiClient::AdminsApi* | [**list_portfolio_items**](docs/AdminsApi.md#list_portfolio_items) | **GET** /portfolio_items | List all portfolio items
*CatalogApiClient::AdminsApi* | [**list_portfolios**](docs/AdminsApi.md#list_portfolios) | **GET** /portfolios | List portfolios
*CatalogApiClient::AdminsApi* | [**list_progress_messages**](docs/AdminsApi.md#list_progress_messages) | **GET** /order_items/{order_item_id}/progress_messages | Gets a list of progress messages in an item
*CatalogApiClient::AdminsApi* | [**list_provider_control_parameters**](docs/AdminsApi.md#list_provider_control_parameters) | **GET** /portfolio_items/{portfolio_item_id}/provider_control_parameters | Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
*CatalogApiClient::AdminsApi* | [**list_service_plans**](docs/AdminsApi.md#list_service_plans) | **GET** /portfolio_items/{portfolio_item_id}/service_plans | Gets all service plans for a specific portfolio item; requires a connection to the topology service.
*CatalogApiClient::AdminsApi* | [**share_info**](docs/AdminsApi.md#share_info) | **GET** /portfolios/{portfolio_id}/share_info | Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
*CatalogApiClient::AdminsApi* | [**share_portfolio**](docs/AdminsApi.md#share_portfolio) | **POST** /portfolios/{portfolio_id}/share | Share a portfolio with one or more groups with specific permission
*CatalogApiClient::AdminsApi* | [**show_order_item**](docs/AdminsApi.md#show_order_item) | **GET** /orders/{order_id}/order_items/{id} | Gets an individual order item from a given order
*CatalogApiClient::AdminsApi* | [**show_portfolio**](docs/AdminsApi.md#show_portfolio) | **GET** /portfolios/{id} | Get a specific portfolio
*CatalogApiClient::AdminsApi* | [**show_portfolio_item**](docs/AdminsApi.md#show_portfolio_item) | **GET** /portfolio_items/{id} | Gets a specific portfolio item
*CatalogApiClient::AdminsApi* | [**submit_order**](docs/AdminsApi.md#submit_order) | **POST** /orders/{order_id}/submit_order | Submit a given order
*CatalogApiClient::AdminsApi* | [**unshare_portfolio**](docs/AdminsApi.md#unshare_portfolio) | **POST** /portfolios/{portfolio_id}/unshare | Unshare a portfolio from one or more groups with specific permission
*CatalogApiClient::AdminsApi* | [**update_portfolio**](docs/AdminsApi.md#update_portfolio) | **PATCH** /portfolios/{id} | Edit an existing portfolio
*CatalogApiClient::DefaultApi* | [**update_portfolio_item**](docs/DefaultApi.md#update_portfolio_item) | **PATCH** /portfolio_items/{id} | Edit an existing portfolio item
*CatalogApiClient::UsersApi* | [**add_to_order**](docs/UsersApi.md#add_to_order) | **POST** /orders/{order_id}/order_items | Add an order item to an order in pending state
*CatalogApiClient::UsersApi* | [**fetch_portfolio_items_with_portfolio**](docs/UsersApi.md#fetch_portfolio_items_with_portfolio) | **GET** /portfolios/{portfolio_id}/portfolio_items | Get all portfolio items from a specific portfolio
*CatalogApiClient::UsersApi* | [**list_order_items**](docs/UsersApi.md#list_order_items) | **GET** /orders/{order_id}/order_items | Gets a list of items in a given order
*CatalogApiClient::UsersApi* | [**list_orders**](docs/UsersApi.md#list_orders) | **GET** /orders | Get a list of orders
*CatalogApiClient::UsersApi* | [**list_portfolio_items**](docs/UsersApi.md#list_portfolio_items) | **GET** /portfolio_items | List all portfolio items
*CatalogApiClient::UsersApi* | [**list_portfolios**](docs/UsersApi.md#list_portfolios) | **GET** /portfolios | List portfolios
*CatalogApiClient::UsersApi* | [**list_progress_messages**](docs/UsersApi.md#list_progress_messages) | **GET** /order_items/{order_item_id}/progress_messages | Gets a list of progress messages in an item
*CatalogApiClient::UsersApi* | [**list_provider_control_parameters**](docs/UsersApi.md#list_provider_control_parameters) | **GET** /portfolio_items/{portfolio_item_id}/provider_control_parameters | Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
*CatalogApiClient::UsersApi* | [**list_service_plans**](docs/UsersApi.md#list_service_plans) | **GET** /portfolio_items/{portfolio_item_id}/service_plans | Gets all service plans for a specific portfolio item; requires a connection to the topology service.
*CatalogApiClient::UsersApi* | [**share_info**](docs/UsersApi.md#share_info) | **GET** /portfolios/{portfolio_id}/share_info | Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
*CatalogApiClient::UsersApi* | [**show_order_item**](docs/UsersApi.md#show_order_item) | **GET** /orders/{order_id}/order_items/{id} | Gets an individual order item from a given order
*CatalogApiClient::UsersApi* | [**show_portfolio**](docs/UsersApi.md#show_portfolio) | **GET** /portfolios/{id} | Get a specific portfolio
*CatalogApiClient::UsersApi* | [**show_portfolio_item**](docs/UsersApi.md#show_portfolio_item) | **GET** /portfolio_items/{id} | Gets a specific portfolio item


## Documentation for Models

 - [CatalogApiClient::AddPortfolioItem](docs/AddPortfolioItem.md)
 - [CatalogApiClient::CollectionLinks](docs/CollectionLinks.md)
 - [CatalogApiClient::CollectionMetadata](docs/CollectionMetadata.md)
 - [CatalogApiClient::CreatePortfolioItem](docs/CreatePortfolioItem.md)
 - [CatalogApiClient::Order](docs/Order.md)
 - [CatalogApiClient::OrderItem](docs/OrderItem.md)
 - [CatalogApiClient::OrderItemsCollection](docs/OrderItemsCollection.md)
 - [CatalogApiClient::OrdersCollection](docs/OrdersCollection.md)
 - [CatalogApiClient::Organization](docs/Organization.md)
 - [CatalogApiClient::Portfolio](docs/Portfolio.md)
 - [CatalogApiClient::PortfolioItem](docs/PortfolioItem.md)
 - [CatalogApiClient::PortfolioItemsCollection](docs/PortfolioItemsCollection.md)
 - [CatalogApiClient::PortfoliosCollection](docs/PortfoliosCollection.md)
 - [CatalogApiClient::ProgressMessage](docs/ProgressMessage.md)
 - [CatalogApiClient::ProgressMessagesCollection](docs/ProgressMessagesCollection.md)
 - [CatalogApiClient::ProviderControlParameters](docs/ProviderControlParameters.md)
 - [CatalogApiClient::ServicePlan](docs/ServicePlan.md)
 - [CatalogApiClient::ShareInfo](docs/ShareInfo.md)
 - [CatalogApiClient::SharePolicy](docs/SharePolicy.md)
 - [CatalogApiClient::UnsharePolicy](docs/UnsharePolicy.md)


## Documentation for Authorization


### APIKeyAuth

- **Type**: API key
- **API key parameter name**: x-rh-auth-identity
- **Location**: HTTP header

### BasicAuth

- **Type**: HTTP basic authentication

