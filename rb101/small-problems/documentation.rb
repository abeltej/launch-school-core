# Locate the ruby documentation for methods File::path and File#path. How are they different?

# Both methods can be found on the documentation page for the File class in the Core API section.

# File::path is a class method
# File#path is an instance method

#Class methods are called on the class, while instance methods are called on objects. Thus:

puts File.path('bin')

# calls the class method File::path since we're calling it on the File class, while:

f = File.new('my-file.txt')
puts f.path

# calls the instance method File#path since we're calling it on an object of the File class, namely f.

# Pay attention when reading the documentation; make sure you are using a class method when you need a class method, and an instance method when you need an instance method.


# Optional Arguments Redux

# Assume you have the following code:
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# What will each of the 4 puts statements print?

# puts Date.civil
-4712-01-01

# puts Date.civil(2016)
2016-01-01

# puts Date.civil(2016, 5)
2016-05-01

# puts Date.civil(2016, 5, 13)
2016-05-13


# Default Arguments in the Middle

# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.

# solution
[4, 5, 3, 6]

# Information about arguments can be found at http://ruby-doc.org/ by selecting the doc/syntax/calling_methods.rdoc link from the core API page. If you scroll down to the Default Positional Arguments section and start reading, you will learn that ruby lets you use default arguments in the middle of a number of positional arguments, much as we are doing here. The documentation shows that positional arguments are filled out first, then the default arguments are set with any values supplied, and, finally, default values are applied to anything remaining.

# In this exercise, 4, 5 and 6 are assigned to the positional arguments a, b and d. Note that 5 overrides the default value for b, but c is not set to any of the listed values. c, instead, is assigned its default value, 3. Thus, when the results are printed, we see the results shown in our solution.


# Mandatory Blocks

# The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code: 
a = [1, 4, 8, 11, 15, 19]
# How would you search this Array to find the first element whose value exceeds 8?

# Solution

value = a.bsearch { |element| element > 8 }
puts value # => 11

# The documentation for Array#bsearch has the signature:

bsearch {|x| block } → elem

# This signature shows that #bsearch takes only one argument - a block - and returns an element of the Array to which it is applied. We can also see that the block is required, and that it takes one argument. The text and examples below the signature tell and show us that the block must return true or false when operating in what is called "find-minimum mode", which is the usual use case.

# Putting this all together, we can devise our call to #bsearch: we use a as the caller, a block of { |element| element > 8 } to find the first element whose value is greater than 8, and we store the return value to a variable named value. The value of value is then printed, which shows that #bsearch found the 11 in a.