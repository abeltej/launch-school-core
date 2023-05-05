=begin
Searching 101
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

1. Read problem out loud.
2. Input: six integers
   Output: string stating if the last integer matches any of the first six



3. Examples/Rules:
   [1, 2, 3, 4, 5] => 3 => true (3 appears in array)

  Rules



=end



# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include?(last_number)
#   puts "#{last_number} appears in #{numbers}"
# else
#   puts "#{last_number}does not appears in #{numbers}"
# end


=begin
Arithmetic Integer
Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.



1. Read problem out loud.
2. Input/Output: 2 positive integer
                 integer representing the result of 6 operations
3. Examples/Rules:

  Rules
  output is an integer
  addition, subtraction, product, quotient, remainder, and power are the operations


  Examples
  ==> Enter the first number:
  23
  ==> Enter the second number:
  17
  ==> 23 + 17 = 40
  ==> 23 - 17 = 6
  ==> 23 * 17 = 391
  ==> 23 / 17 = 1
  ==> 23 % 17 = 6
  ==> 23 ** 17 = 141050039560662968926103


4. Steps: input two positive integers
          iterate through the operators
          perform the math
          print results
5. Helper Methods: (as needed)



=end
=begin
puts "Enter First #"
first_number = gets.chomp.to_i
puts "Enter Second #"
second_number = gets.chomp.to_i

puts "#{first_number} + #{second_number} = #{first_number + second_number}"
puts "#{first_number} - #{second_number} = #{first_number - second_number}"
puts "#{first_number} * #{second_number} = #{first_number * second_number}"
puts "#{first_number} / #{second_number} = #{first_number / second_number}"
puts "#{first_number} % #{second_number} = #{first_number % second_number}"
puts "#{first_number} ** #{second_number} = #{first_number ** second_number}"
=end


=begin

Counting the Number of Characters
Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

input:

Please write word or multiple words: walk
output:

There are 4 characters in "walk".
input:

Please write word or multiple words: walk, don't run
output:

There are 13 characters in "walk, don't run".
=end

# puts "Please write word or multiple words:"
# answer = gets.chomp

# characters = answer.gsub(/\s+/, '').size
# puts "There are #{characters} characters in #{answer}"

=begin
Multiplying Two Numbers
Create a method that takes two arguments, multiplies them together, and returns the result.

Example:
=end
# def multiply(first_number, second_number)
#   first_number * second_number
# end
# puts multiply(5, 3) == 15



=begin
Squaring an Argument
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

Example:
=end


# def square(first_number)
#   multiply(first_number, first_number)
# end

# def power_to_n(first_number, second_number)
#   multiply(first_number, first_number) * first_number ** (second_number-2)
# end

# p power_to_n(2, 8) == 256 # true
# p power_to_n(-5, 3) == -125 # true
# p power_to_n(18, 4) == 104976 # true
# p power_to_n(15, 0) == 1 # true
# p power_to_n(0, 5) == 0 # true
# p power_to_n(5, -2) == 0.04 # true
# p power_to_n(0.5, 5) == 0.03125 # true

=begin
Exclusive Or
The || operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a falsey value. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

Examples:
=end

 def xor?(num1, num2)
  return true if num1 && !num2
  return true if num2 && !num1
  false
 end

 def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
 end

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

=begin

Odd Lists
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:
=end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

def oddities(array)
  odd_array = []
  i = 0
  while i < array.size
    odd_array << array[i]
    i += 2
  end
  odd_array
end

=begin
Palindromic Strings (Part 1)
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

Examples:
=end
def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true


=begin
Palindromic Strings (Part 2)
Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

Examples:
=end


def real_palindrome?(string)
  string = string.downcase.delete('a-z0-9')
  palindrome?(string)
end
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

=begin
Palindromic Numbers
Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

Examples:
=end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
