=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

OpenAPI spec version: 0.1.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for CatalogApiClient::PortfolioItemApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PortfolioItemApi' do
  before do
    # run before each test
    @instance = CatalogApiClient::PortfolioItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PortfolioItemApi' do
    it 'should create an instance of PortfolioItemApi' do
      expect(@instance).to be_instance_of(CatalogApiClient::PortfolioItemApi)
    end
  end

  # unit tests for create_portfolio_item
  # Add a new portfolio item
  # Adds a name and description for a portfolio item and returns the newly created portfolio item. 
  # @param create_portfolio_item 
  # @param [Hash] opts the optional parameters
  # @return [PortfolioItem]
  describe 'create_portfolio_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy_portfolio_item
  # Delete an existing portfolio item
  # Deletes the portfolio item based on portfolio item ID passed 
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'destroy_portfolio_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_portfolio_items
  # List all portfolio items
  # Gets a list of portfolio items. 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @return [PortfolioItemsCollection]
  describe 'list_portfolio_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_provider_control_parameters
  # Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
  # Gets the provider control parameters for a portfolio item. 
  # @param portfolio_item_id The Portfolio Item ID
  # @param [Hash] opts the optional parameters
  # @return [ProviderControlParameters]
  describe 'list_provider_control_parameters test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_service_plans
  # Gets all service plans for a specific portfolio item; requires a connection to the topology service.
  # Gets all service plans for a portfolio item. 
  # @param portfolio_item_id The Portfolio Item ID
  # @param [Hash] opts the optional parameters
  # @return [Array<ServicePlan>]
  describe 'list_service_plans test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_portfolio_item
  # Gets a specific portfolio item
  # Gets a specific portfolio item based on the portfolio item ID passed 
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [PortfolioItem]
  describe 'show_portfolio_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_portfolio_item
  # Edit an existing portfolio item
  # Edits portfolio item specified by the given ID.
  # @param id ID of the resource
  # @param portfolio_item Parameters needed to update a Portfolio Item
  # @param [Hash] opts the optional parameters
  # @return [PortfolioItem]
  describe 'update_portfolio_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end