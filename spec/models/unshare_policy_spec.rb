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
require 'date'

# Unit tests for CatalogApiClient::UnsharePolicy
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UnsharePolicy' do
  before do
    # run before each test
    @instance = CatalogApiClient::UnsharePolicy.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UnsharePolicy' do
    it 'should create an instance of UnsharePolicy' do
      expect(@instance).to be_instance_of(CatalogApiClient::UnsharePolicy)
    end
  end
  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["catalog:portfolios:read", "catalog:portfolios:update", "catalog:portfolios:delete", "catalog:portfolios:order"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.permissions = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "group_uuids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
