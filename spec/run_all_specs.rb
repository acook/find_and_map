Dir['*_spec.rb'].each do |filename|
  require_relative filename
end
