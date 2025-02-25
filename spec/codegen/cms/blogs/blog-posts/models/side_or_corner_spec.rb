=begin
#Blog Post endpoints

#Use these endpoints for interacting with Blog Posts, Blog Authors, and Blog Tags

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Cms::Blogs::BlogPosts::SideOrCorner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SideOrCorner' do
  before do
    # run before each test
    @instance = Hubspot::Cms::Blogs::BlogPosts::SideOrCorner.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SideOrCorner' do
    it 'should create an instance of SideOrCorner' do
      expect(@instance).to be_instance_of(Hubspot::Cms::Blogs::BlogPosts::SideOrCorner)
    end
  end
  describe 'test attribute "vertical_side"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TOP", "MIDDLE", "BOTTOM"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.vertical_side = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "horizontal_side"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["LEFT", "CENTER", "RIGHT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.horizontal_side = value }.not_to raise_error
      # end
    end
  end

end
