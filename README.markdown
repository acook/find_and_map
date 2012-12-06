Find and Map
============

Looking for a way to simply find and map an enumerable. ex: {a: 1, b:2}.find_and_map {|key, value| if key == :a; value; end } #=> 1
So it would find the first match and return the result of the block, instead of the full element.
find returns [:a, 1]
And map returns [1, nil]
So I'm looking for a simple hybrid without compact'ing or explict returns in the middle of the loop, or having to do nil checks if the search fails.
