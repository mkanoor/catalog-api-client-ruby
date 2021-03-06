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
require 'date'

# Unit tests for CatalogApiClient::ProgressMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProgressMessage' do
  before do
    # run before each test
    @instance = CatalogApiClient::ProgressMessage.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProgressMessage' do
    it 'should create an instance of ProgressMessage' do
      expect(@instance).to be_instance_of(CatalogApiClient::ProgressMessage)
    end
  end
  describe 'test attribute "received_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "level"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["info", "error", "warning", "debug"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.level = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "order_item_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
