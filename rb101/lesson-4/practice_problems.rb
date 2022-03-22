# Practice Problems: Methods and More Methods
# Now that we've explored a handful of methods and looked at how they work, let's do a few practice problems to help drive home the concepts we learned about in the last two assignments.

# The goal for these practice problems is to gain a deep understanding of specific concepts, not to rush through them. Do your best to answer the questions without running the example code. You should be able to determine the answers just by looking at the code or by referring to the Ruby docs.

# Practice Problem 1
# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Show Solution

# => [1, 2, 3]
# select performs selection based on the truthiness of the block's return value. In this case the return value will always be 'hi', which is a "truthy" value. Therefore select will return a new array containing all of the elements in the original array.

# Practice Problem 2
# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Show Solution

# => 2
# If a block is given, counts the number of elements for which the block returns a true value.
# Based on this information, we can conclude that count only counts an element if the block's return value evaluates as true. This means that count considers the truthiness of the block's return value.


# Practice Problem 3
# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# Show Solution

# => [1, 2, 3]
# Since puts always returns nil, you might think that no values would be selected and an empty array would be returned. The important thing to be aware of here is how reject treats the return value of the block. reject returns a new array containing items where the block's return value is "falsey". In other words, if the return value was false or nil the element would be selected.


# Practice Problem 4
# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# Show Solution

# => { "a" => "ant", "b" => "bear", "c" => "cat" }
# Based on our knowledge of each, it might be reasonable to think that each_with_object returns the original collection. That isn't the case, though. When we invoke each_with_object, we pass in an object ({} here) as an argument. That object is then passed into the block and its updated value is returned at the end of each iteration. Once each_with_object has iterated over the calling collection, it returns the initially given object, which now contains all of the updates.

# In this code, we start with the hash object, {}. On the first iteration, we add "a" => "ant" to the hash. On the second, we add "b" => "bear", and on the last iteration, we add "c" => "cat". Thus, #each_with_object in this example returns a hash with those 3 elements.

# Practice Problem 5
# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Show Solution

# shift destructively removes the first key-value pair in hash and returns it as a two-item array. If we didn't already know how shift worked, we could easily learn by checking the docs for Hash#shift. The description for this method confirms our understanding:

# Removes a key-value pair from hsh and returns it as the two-item array [ key, value ], or the hash’s default value if the hash is empty.

# There are quite a few Ruby methods, and you're not expected to know them all. That's why knowing how to read the Ruby documentation is so important. If you don't know how a method works you can always check the docs.

# Practice Problem 6
# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# Show Solution

# Practice Problem 7
# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# Show Solution

# Practice Problem 8
# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Show Solution

# Practice Problem 9
# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# Show Solution

# Practice Problem 10
# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# Show Solution

# Summary
# After completing these practice problems, you've hopefully been able to further solidify your knowledge and understanding of the concepts covered in the past three assignments. The key things to think about are:

# How does the method treat the block's return value?
# What is the return value of the method?
# How can you use the Ruby docs to learn more about a method?
# Is the method destructive?
# In the next lesson we'll focus on more complex concepts, so it's important to be comfortable with these fundamental concepts before moving forward.