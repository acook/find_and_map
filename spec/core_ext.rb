require 'rspec'
require_relative '../lib/find_and_map/core_ext'

describe "Core Extension" do
  it 'is automatically included on Enumerable objects' do
    Hash.instance_methods.should include(:find_and_map)
  end
end
