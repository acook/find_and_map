require 'rspec'
require 'pry'
require_relative '../lib/find_and_map'

describe FindAndMap do
  specify { subject.should be_a(Module)}

  it 'finds the first item that returns non-nil and returns the result' do
    a = [1,2,3]
    a.extend FindAndMap
    a.find_and_map do |element|
      if element == 2 then
        'hi!'
      end
    end.should == 'hi!'
  end
end
