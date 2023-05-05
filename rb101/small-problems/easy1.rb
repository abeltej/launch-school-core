# Repeat Yourself
# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
def repeat(str, num)
  num.times do
    puts str
  end
end

repeat('Hello', 3)
# Hello
# Hello
# Hello





# Odd
# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def is_odd? (num)
  # num  % 2 != 0
  # num  % 2 == 1
  num.remainder(2) != 0       # x.remainder(y) = x-y*(x/y).truncate
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#Keep in mind that you're not allowed to use #odd? or #even? in your solution.


# List of Digits
# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(num)
  num.to_s.chars.map(&:to_i) # (&:to_i) == { |char| char.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


# How Many?
# Write a method that counts the number of occurrences of each element in a given array.
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

car => 4
truck => 3
SUV => 1
motorcycle => 2

# Reverse It (Part 1)
# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# The tests above should print true.

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

# Reverse It (Part 2)
# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(str)
 words = []

  str.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

# Stringy Strings
# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# The tests above should print true.

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

# Array Average
# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# The tests above should print true.

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end


# Sum of Digits
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# The tests above should print true.
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# What's my Bonus?
# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# The tests above should print true.

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end
