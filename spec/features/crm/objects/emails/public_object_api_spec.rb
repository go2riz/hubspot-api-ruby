require 'spec_helper'

describe 'Hubspot::Crm::Objects::Emails::PublicObjectApi' do
  subject(:api) { Hubspot::Crm::Objects::Emails::PublicObjectApi.new }
  
  it { is_expected.to respond_to(:merge) }
end
