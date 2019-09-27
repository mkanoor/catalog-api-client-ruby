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

# Unit tests for CatalogApiClient::TenantSettings
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TenantSettings' do
  before do
    # run before each test
    @instance = CatalogApiClient::TenantSettings.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TenantSettings' do
    it 'should create an instance of TenantSettings' do
      expect(@instance).to be_instance_of(CatalogApiClient::TenantSettings)
    end
  end
  describe 'test attribute "current"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "schema"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
