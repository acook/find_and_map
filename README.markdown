Find and Map
============

    Anthony M. Cook (2013)

Finds and returns the value of the block.

[![Gem Version](https://badge.fury.io/rb/find_and_map.png)](http://badge.fury.io/rb/find_and_map)
[![Build Status](https://travis-ci.org/acook/find_and_map.png?branch=master)](https://travis-ci.org/acook/find_and_map)
[![Code Climate](https://codeclimate.com/github/acook/find_and_map.png)](https://codeclimate.com/github/acook/find_and_map)
[![Dependency Status](https://gemnasium.com/acook/find_and_map.png)](https://gemnasium.com/acook/find_and_map)

Usage
-----

Put it in your Gemfile:

```ruby
gem 'find_and_map'
```

Then you can include it on your own Enumerable object:

```ruby
include FindAndMap
```

Or you can use the core extension directly the Gemfile:

```ruby
gem 'find_and_map', require: 'find_and_map/core_ext'
```

Then you can use it like this:

```ruby
{a: 1, b: 2}.find_and_map do |key, value|
  value if key == :a
end #=> 1
```

Background
----------

I was looking for a way to simply find the first matching element in an enumerable and return a mapped result.

Using the same block above (in the Usage section) `find` returns `[:a, 1]` and `map` returns `[1, nil]`. But I want just the value, or even some other object based on it, but only that and nothing else.

This method finds the first match (like `Enumerable#find`) and then return the result of the block rather than the matching element (like `Enumerable#map`).

I don't like doing explict returns in the middle of loops, or nil checks if find fails, explicit breaks that alter the functionality of a standard iterator, and using compact after a map just seems excessive.

Here's some alternative ways of getting the desired result that violate the above constraints...

Using `find`:

````ruby
{a: 1, b: 2}.find do |key, value|
  break value if key == :a
end
````

Using `map`:

````ruby
{a: 1, b: 2}.map do |key, value|
  value if key == :a
end.compact
````

## Installation

Add this line to your application's Gemfile:

    gem 'find_and_map'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install find_and_map

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
