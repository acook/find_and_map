require 'rspec'

describe "Core Extension" do
  before :all do
    require_relative '../lib/find_and_map/core_ext'
  end

  after :all do
    Enumerable.send :remove_method, :find_and_map
  end

  it 'is automatically included on Enumerable objects' do
    Hash.instance_methods.should include(:find_and_map)
  end
end
