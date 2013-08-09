require 'find_and_map/version'

module FindAndMap
  def find_and_map
    self.each do |*element|
      result = yield *element
      return result if result
    end
    return nil
  end
end
