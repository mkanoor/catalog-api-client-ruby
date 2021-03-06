=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

The version of the OpenAPI document: 1.1.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'

# Unit tests for CatalogApiClient::PortfolioItemApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PortfolioItemApi' do
  before do
    # run before each test
    @api_instance = CatalogApiClient::PortfolioItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PortfolioItemApi' do
    it 'should create an instance of PortfolioItemApi' do
      expect(@api_instance).to be_instance_of(CatalogApiClient::PortfolioItemApi)
    end
  end

  # unit tests for add_portfolio_item_tag
  # Add Tag for Portfolio Item
  # Adds a single tag to a Portfolio Item object
  # @param id ID of the resource
  # @param tag 
  # @param [Hash] opts the optional parameters
  # @return [Array<Tag>]
  describe 'add_portfolio_item_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
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
  # @return [RestoreKey]
  describe 'destroy_portfolio_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portfolio_item_next_name
  # Get the next name for a the Portfolio Item prior to a copy operation
  # Get the next name for a the Portfolio Item prior to a copy operation
  # @param portfolio_item_id The Portfolio Item ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :destination_portfolio_id The destination portfolio to compare names against
  # @return [PortfolioItemNextName]
  describe 'get_portfolio_item_next_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_portfolio_item_tags
  # List Tags for Portfolio Items
  # Returns an array of Tag objects
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Object] :filter Filter for querying collections.
  # @return [TagsCollection]
  describe 'list_portfolio_item_tags test' do
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
  # @option opts [Object] :filter Filter for querying collections.
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
  # @return [Object]
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

  # unit tests for post_copy_portfolio_item
  # Make a copy of the Portfolio Item
  # Make a copy of the Portfolio Item.
  # @param portfolio_item_id The Portfolio Item ID
  # @param [Hash] opts the optional parameters
  # @option opts [CopyPortfolioItem] :copy_portfolio_item 
  # @return [PortfolioItem]
  describe 'post_copy_portfolio_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_portfolio_item_tags
  # Remove Tags from Portfolio Item
  # Remove Tags from Portfolio Item
  # @param id ID of the resource
  # @param tag 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_portfolio_item_tags test' do
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

  # unit tests for show_portfolio_item_icon
  # Fetches the specified portfolio item&#39;s icon image
  # Fetch the specified portfolio item&#39;s icon image.
  # @param portfolio_item_id The Portfolio Item ID
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'show_portfolio_item_icon test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for un_delete_portfolio_item
  # Undelete a specified Portfolio Item
  # If a record has been discarded, this operation will undelete it so it can be requested normally.
  # @param portfolio_item_id The Portfolio Item ID
  # @param restore_key 
  # @param [Hash] opts the optional parameters
  # @return [PortfolioItem]
  describe 'un_delete_portfolio_item test' do
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
