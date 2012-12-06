module FindAndMap
  def find_and_map
    self.each do |*element|
      result = yield *element
      break result if result
    end
  end
end
