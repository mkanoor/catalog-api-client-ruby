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

# Unit tests for CatalogApiClient::TagsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @api_instance = CatalogApiClient::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instance of TagsApi' do
      expect(@api_instance).to be_instance_of(CatalogApiClient::TagsApi)
    end
  end

  # unit tests for list_tags
  # List Tags
  # List Tags
  # @param [Hash] opts the optional parameters
  # @return [TagsCollection]
  describe 'list_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
