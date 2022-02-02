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


# Mandatory Blocks

# The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code: 
a = [1, 4, 8, 11, 15, 19]
# How would you search this Array to find the first element whose value exceeds 8?
