=begin 

Letter Swap
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces/

PROBLEM
Identify expected input and output
Make the requirements explicit
Identify rules
Mental model of the problem (optional)

For each word of the string, replace the first and last letters with each otherwise

rules: each string only letters
        case- sensitive

EXAMPLES - Validate understanding of the problem

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

DATA STRUCTURES - How we represent data that we will work with when converting the input to output.

input:  string 
          
output:  string


ALGORITHM - Steps for converting input to output
convert to array with seperator being space (seperate the words)
swap first and last letter from each word in array
          push first letter into array #1
          push last letter into collection #2
convert array back to a string 

- 
Code w/ intent - Implementation of Algorithm

=end

def swap(string)
  arr = string.split
  arr.map do |word|
    first_letter = word[0]
    last_letter = word[-1]
    word[-1] = first_letter
    word[0] = last_letter
    word
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'