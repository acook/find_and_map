Find and Map
============

    Anthony M. Cook (2012)

Finds and retuns the value of the block.

Usage
-----

I don't include a Core Extension, but all you have to do is include it on the object you want to have the functionality.
To add it to all Enumerable objects you could do:

````ruby
module Enumerable; include FindAndMap; end
````

Then you can use it like this:

````ruby
{a: 1, b: 2}.find_and_map do |key, value|
  value if key == :a
end #=> 1
````

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
