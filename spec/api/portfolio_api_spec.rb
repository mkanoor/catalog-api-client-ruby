=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

OpenAPI spec version: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for CatalogApiClient::PortfolioApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PortfolioApi' do
  before do
    # run before each test
    @instance = CatalogApiClient::PortfolioApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PortfolioApi' do
    it 'should create an instance of PortfolioApi' do
      expect(@instance).to be_instance_of(CatalogApiClient::PortfolioApi)
    end
  end

  # unit tests for add_portfolio_item_to_portfolio
  # Add a portfolio item to a portfolio
  # Adds a new portfolio item to an existing portfolio. 
  # @param portfolio_id The Portfolio ID
  # @param add_portfolio_item 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_portfolio_item_to_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_portfolio
  # Add a new portfolio
  # Adds a portfolio. 
  # @param portfolio Parameters needed to add a Portfolio
  # @param [Hash] opts the optional parameters
  # @return [Portfolio]
  describe 'create_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy_portfolio
  # Delete an existing portfolio
  # Deletes the portfolio specified by the ID. 
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'destroy_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_portfolio_items_with_portfolio
  # Get all portfolio items from a specific portfolio
  # Gets all portfilio items in the portfolio specified by the given ID. 
  # @param portfolio_id The Portfolio ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Object] :filter Filter for querying collections.
  # @return [PortfolioItemsCollection]
  describe 'fetch_portfolio_items_with_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_portfolios
  # List portfolios
  # Gets a list of portfolios. 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Object] :filter Filter for querying collections.
  # @return [PortfoliosCollection]
  describe 'list_portfolios test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for share_info
  # Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
  # Fetch share information about a portfolio 
  # @param portfolio_id The Portfolio ID
  # @param [Hash] opts the optional parameters
  # @return [Array<ShareInfo>]
  describe 'share_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for share_portfolio
  # Share a portfolio with one or more groups with specific permission
  # Share a Portfolio with one or more groups with specific permissions 
  # @param portfolio_id The Portfolio ID
  # @param share_policy 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'share_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_portfolio
  # Get a specific portfolio
  # Gets the portfolio specified by the portfolio ID. 
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [Portfolio]
  describe 'show_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unshare_portfolio
  # Unshare a portfolio from one or more groups with specific permission
  # Unshare a Portfolio with one or more groups with specific permissions 
  # @param portfolio_id The Portfolio ID
  # @param unshare_policy 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'unshare_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_portfolio
  # Edit an existing portfolio
  # Returns the edited portfolio. 
  # @param id ID of the resource
  # @param portfolio Parameters needed to update a Portfolio
  # @param [Hash] opts the optional parameters
  # @return [Portfolio]
  describe 'update_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
