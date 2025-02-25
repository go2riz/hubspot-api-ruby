require 'spec_helper'

describe 'Hubspot::Crm::Objects::Notes::BasicApi' do
  subject(:api) { Hubspot::Crm::Objects::Notes::BasicApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
