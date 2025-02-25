=begin
#Contacts

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Contacts::GdprApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GdprApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Contacts::GdprApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GdprApi' do
    it 'should create an instance of GdprApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Contacts::GdprApi)
    end
  end

  # unit tests for purge
  # Gdpr DELETE
  # Permanently delete a contact and all associated content to follow Gdpr. Use optional property &#39;idProperty&#39; set to &#39;email&#39; to identify contact by email address. If email address is not found, the email address will be added to a blocklist and prevent it from being used in the future.
  # @param public_gdpr_delete_input 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
