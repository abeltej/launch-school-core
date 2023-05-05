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


# Multiple Signatures

# What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# Solution 

# puts a.fetch(7)
IndexError: index 7 outside of array bounds: -5...5

# puts a.fetch(7, 'beats me')
beats me

# puts a.fetch(7) { |index| index**2 }
49

# The documentation for Array#fetch has the signature:

fetch(index) → obj
fetch(index, default) → obj
fetch(index) { |index| block } → obj

# This shows that #fetch can be called with an index argument, an index and a default argument, or an index argument and a block. Note in particular that having multiple lines in the signature is yet another way in which the ruby documentation indicates that an argument is optional. In this case, both default and the block are optional arguments, but they can't be used together.

# Reading the documentation, we see that #fetch simply returns the element of an Array by its index, but it also does bounds checking (which Array#[] does not); that is, it checks whether the specified element actually exists before fetching it, and raises an error if it does not exist. The second and third forms of #fetch prevent an error from occurring if the indicated element does not exist by providing a default value or a block that returns an appropriate value.

# With this basic overview, we can tell that the first puts should print an error message; the second form returns the value of the default argument if the element doesn't exist; the third form returns the value returned by the block. So, the first puts raises an IndexError, the second prints beats me, while the third prints 49.


# Keyword Arguments

# What does this code print?
5.step(to: 10, by: 3) { |value| puts value }

# Solution
# 5
# 8

# Finding the documentation for #step can be a bit difficult since there are different types of number classes in ruby. Even a Google search will probably turn up a lot of false leads. If you need a method that works with numbers, the following classes are worth searching through:

# Integer
# Float
# Numeric
# Math

# Integer and Float inherit from Numeric. Numeric is basically the superclass of all numeric types, while Math is a module that supplies a lot of number crunching functionality. Choosing the right documentation to look at is difficult, so, for now, be aware that you may have to look in all these locations.

# As it happens, you can find #step described in the Numeric class documentation. #step has 4 calling signatures, but we're interested in the first listed. In this version, #step takes two keyword arguments (also called named arguments), :by and :to (keyword argument names are symbols). This shows up in our method signature:

step(by: step, to: limit) { |i| block } → self

# The argument named :by is a "step" value, while the argument named :to is a limit. The text below the signature shows that the "step" value indicates how much to increment the index by with each iteration, while "limit" is the largest value; if the index exceeds this value, the loop exits.

# We can also see that #step takes a loop in this first form, and that it will execute the block for each value in the iteration.

# Given all this information, we can see that the code will print 5 on its first iteration, 8 on the second iteration, and then quit because 11 > 10


# Parent Class
# Use irb to run the following code:
s = 'abc'
puts s.public_methods.inspect

#solution
s = 'abc'
puts s.public_methods(false).inspect

# Included Modules
# Use irb to run the following code:
a = [5, 9, 3, 11]
puts a.min

# Find the documentation for the #min method and change the above code to print the two smallest values in the Array.
a = [5, 9, 3, 11]
puts a.min(2)

# Once you have the Enumerable documentation in front of you, scroll down to the documentation for #min. You can see from this documentation that #min takes an optional argument that specifies how many values it should return -- note that you have to look at the examples to learn what the optional argument does. In our case, we want two values, so we alter our call to #min by adding the argument 2.

# Down the Rabbit Hole
# In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.

# The key here is the reference to Psych. If you go back to the Standard Library API page and click on psych, you see a long list of Psych-related classes. Unfortunately, that long list makes a quest for a method named ::load_file somewhat daunting.