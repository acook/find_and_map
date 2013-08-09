# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'find_and_map/version'

Gem::Specification.new do |gem|
  gem.name          = "find_and_map"
  gem.version       = FindAndMap::VERSION
  gem.authors       = ["Anthony Cook"]
  gem.email         = ["anthonymichaelcook@gmail.com"]
  gem.description   = %q{Finds the first element for which the block returns non-falsy and returns the value.}
  gem.summary       = %q{Hybrid of find and map!}
  gem.homepage      = 'http://github.com/acook/find_and_map'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.13'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'pry-theme'
end
