Find and Map
============

    Anthony M. Cook (2012)

I was looking for a way to simply find the first matching element in an enumerable and return a mapped result.

For example:

````ruby
{a: 1, b: 2}.find_and_map do |key, value|
  value if key == :a
end #=> 1
````

Using the same block above `find` returns `[:a, 1]` and `map` returns `[1, nil]`. But I want just the value, or even some other object based on it, but only that and nothing else.
      
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