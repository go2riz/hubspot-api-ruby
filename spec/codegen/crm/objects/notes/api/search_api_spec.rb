=begin
#Notes

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Objects::Notes::SearchApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SearchApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Objects::Notes::SearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchApi' do
    it 'should create an instance of SearchApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Objects::Notes::SearchApi)
    end
  end

  # unit tests for do_search
  # @param public_object_search_request 
  # @param [Hash] opts the optional parameters
  # @return [CollectionResponseWithTotalSimplePublicObjectForwardPaging]
  describe 'do_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
