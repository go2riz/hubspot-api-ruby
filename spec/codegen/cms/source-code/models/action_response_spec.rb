=begin
#CMS Source Code

#Endpoints for interacting with files in the CMS Developer File System. These files include HTML templates, CSS, JS, modules, and other assets which are used to create CMS content.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Cms::SourceCode::ActionResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ActionResponse' do
  before do
    # run before each test
    @instance = Hubspot::Cms::SourceCode::ActionResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActionResponse' do
    it 'should create an instance of ActionResponse' do
      expect(@instance).to be_instance_of(Hubspot::Cms::SourceCode::ActionResponse)
    end
  end
  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PENDING", "PROCESSING", "CANCELED", "COMPLETE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "requested_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "started_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "completed_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "links"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
