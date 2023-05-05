=begin 

Uppercase Check
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.


PROBLEM
Identify expected input and output
Make the requirements explicit
Identify rules
Mental model of the problem (optional)

rules: all alphabetic characters must be uppercase to return true
ignore non alphabetic

EXAMPLES - Validate understanding of the problem
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

DATA STRUCTURES - How we represent data that we will work with when converting the input to output.

input:  string
output:  boolean ( true or false )

ALGORITHM - Steps for converting input to output
convert string to uppercase
compare the upcased string with the original 

- 
Code w/ intent - Implementation of Algorithm

=end

def uppercase?(str)
  str == str.upcase 
end
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true