require 'rspec'
require 'pry'
require_relative '../lib/find_and_map'

describe FindAndMap do
  let(:data) { [1, 2, 3] }
  let(:collection) { data.extend subject; data }
  it { should be_a(Module) }

  it 'finds the first item that returns non-nil and returns the result' do
    collection.find_and_map do |element|
      if element == 2 then
        'hi!'
      end
    end.should == 'hi!'
  end

  it 'returns nil if nothing found' do
    collection.find_and_map do |element|
      if element == 500 then
        'BOGUS'
      end
    end.should == nil
  end
end
