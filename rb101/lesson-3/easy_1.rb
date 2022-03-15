# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

1
2
2
3

# Question 2
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it? =====  not equal to
# put ! before something, like !user_name  ===== ?
# put ! after something, like words.uniq! ===== part of method name
# put ? before something ===== ? : ternary operator
# put ? after something ===== method name
# put !! before something, like !!user_name ===== is used to turn any object into their boolean equivalent

# Question 3
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

# Question 4
# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?
numbers.delete_at(1) # delete at index 1
numbers.delete(1) # delete at index 0

numbers.delete_at(1) # numbers is now [1, 3, 4, 5]
numbers.delete(1) # numbers is now [2, 3, 4, 5]

# Question 5
# Programmatically determine if 42 lies between 10 and 100.

# def determine?(x)
#   10 < x > 100
# end
# determine?(42)

(10..100).cover?(42)

# Question 6
# Starting with the string:
# show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

"Four score and " + famous_words
"Four score and " << famous_words
famous_words.prepend("Four score and ")

# Question 7
# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.

flintstones.flatten!

# Question 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.assoc("Barney") #=> ["Barney", 2]]