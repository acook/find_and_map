require_relative '../find_and_map'

module Enumerable
  def find_and_map &block
    self.extend FindAndMap
    find_and_map &block
  end
end
