=begin
Common Mistakes
- Not enough time spent parsing the problem
- Assumptions about the solution
- No high-level algorithm
- Fuzzy low-level algorithm
- Lack of flexibility
- Lack of syntax fluency
=end

=begin
You wake up at the control board of a submarine. In front of you is a panel of buttons and a note left by the previous captain: "Use the buttons to set the ship's depth, and aim for as close to _ leagues as possible -- but definitely don't go higher! You can select only one *set* of buttons, and together they determine the depth. Last time I pressed 2 buttons, and I was aiming for 7 leagues."

The buttons in front of you are as follows:
2
3
1
2
4
3
=end

# Input  -- string
# output - string ( modified according to the rules given)


# rule


# problem above is same as below
# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

=begin
Write a method that takes an array of consecutive letters as input and returns the missing letter.
=end

# p determine_missing_letter(['a','b','c','d','f']) == 'e'
# p determine_missing_letter(['O','Q','R','S']) == 'P'
# p determine_missing_letter(["a","b","c","d","f"]) == "e"
# p determine_missing_letter(["O","Q","R","S"]) == "P"




# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

=begin RICHARD
# PEDAC
# Problem:
# - Input: Array
# - Output: Integer
# - Rules:
#   - Explicit:
#     - method takes two arguments, an array and an integer
#     - method returns an integer
#       - value is equal to the minimum length of a contiguous subarray for which the sum
#         is greater than or equal to the input integer
#   - Implicit:
#     - input array is non-empty
#     - if there is no contigious pair that sums to the integer -> return 0
#
# Examples:
# - Test Case 1:
#   - Input: [1, 2, 3] and 5
#   - Output: 2
#     - contiguous sub-arrays and sums:
#       - 1 -> 1
#       - 1, 2 -> 3
#       - 1, 2, 3 -> 6
#       - 2 -> 2
#       - 2, 3 -> 5 <- target value
#       - 3 -> 3
#
# Data Structure:
# - Array - input argument
# - Integer - return value
# - Array - to hold all subarrays from input array
# - Hash:
#   - key: each subarray
#   - value: the sum of the subarray
#
# Algorithm:
# - create a method that takes two arguments
#   - Array
#   - Integer
# - find all contigious arrays of numbers in input array
#   - use a helper method:
#     - create a method that takes one argument, an array
#     - create an array to hold all contiguous subarrays
#     - iterate through each value in the array
#     - for each value:
#       - add the current value as a subarray into the array holding all subarrays
#       - add the next value in the array to the current value to form a subarray
#       - add the current subarray to the array of all subarrays
#       - keep adding the next value in the array to the current value to form
#         each subarray until we hit the last value
#     - return the array of all subarrays
# - find the sum of each contigious array
#   - call Array#sum
# - create a hash to hold each subarray and their sums:
#   - key: contigious array
#   - values: sum
# - select the arrays that are equal to the sum
#   - call Hash#select and pass in the criteria of the value equal to the target sum
#
# Code:

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

=end

=begin JESSE
Problem:
input:
  - array of integers, representing buttons and depths
  - positive integer, target depth
output: integer, representing length of shortest possible array of buttons pressed
rules: output subarray total count must add up to target depth
  - subarray must be a contiguous section of the input array
  - integers are always positive in the given Array
  - output result can be zero, if no option is available

Examples:
([1, 2, 3, 4], 3) == 1
1 => false
2 => false
3 => true, return [3], and the count is 1

([1, 2, 3, 3], 6) == 2
1 => false
2 => false
3 => false
3 => false
1, 2 => false
2, 3 => false
3, 3 => true, return [3, 3], and the count is 2

Data Structure:
input: array of integers
input 2: integer, target Integer
intermediate: subarry to hold integers which add up to the target integer

Algorithm:
  - iterate through given array with an index parameter starting at 0, ending at array size

    - nested iteration going over the array as well
      -
    - increment a size variable by 1 each iteration: the subarray range size
     - each iteration compare subarray range (0..size) totals up to the target Integer
      - if total = target, return the current size iteration integer

=end

=begin ABEL
# Input  -- array of integers, target depth
# output - integer respresenting min total need


# rule:
  positive integers
  method takes an argumemnt with two parameters(array & target)
    same method returns an integer of minimum input needed

    # data structure :
    array of integers
    sub array holding integers that add up to target

    #Examples
    # p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0


    input: [4, 5, 6, 9] , 9
    output: 2?

    input: [1, 2, 5] 5
    output: 1?

    #algorithm
      create empty array
      create empty var
      iterate over array\
      keep track of index
      compare current index value to next index value
        if it greater than or equal to target
          push to sub array
          count size of new array
          return count with integer

=end

=begin AMY
input: array, target
output: integer

Goal: find the minimal length of a continuous subarray that is next to its counterparts for which the sum of these parts is greater than or equal to the given integer

Requirements:
- array is made of positive integers
- minimal length of subarray to be greater than or equal to the given integer
- if the array's elements' sum is less than the integer, return 0.

E:
minSubLength([2, 3, 1, 2, 4, 3], 7) == 2 => 3 + 4 = 7

Test:
[1, 2, 4], 8
1 -> 1
1 + 2 -> 3
1 + 2 + 4 -> 7
1 + 4 -> 5
none of these equal 8, so return 0

D: array/integer => integer

A: initialize empty output_array to store
intialize sum variable to 0
iterate over the array
  - starting at index 0 compare the integer to the target integer argument
    IF integer >= target integer
      add element to empty array
      return output array
    ELSE integer is less than target integer
      add integer to sum variable
      -


push subarray that matches the integer argument with the shortest length into the output_array

-------------------- Scratchpad
arr.each do |sub_arr| ->
sub_arr
=end


=begin
I have interviewed five software engineering candidates over the past two weeks, including folks with grad degrees in computer science/ex-FAANG with 7+ years of experience. All five were jointly rejected by myself and a co-interviewer either because the candidates jumped straight into implementation and ended up with bugs during testing or unhandled edge cases, and/or their oral-written communication was poor.

So, for those folks who are 'PEDACing' for the first few times:
1) Train your problem solving muscles to start with PEDAC by default (or some equivalent thereof);
2) Get comfortable talking through problems out loud, not just typing silently.

Can't stress enough that PEDAC isn't an arbitrary heuristic meant for getting through the curriculum or 109/129 oral assessments. PEDAC works, especially under pressure.

- Sam Swire (Check)
=end



str = "ab1@b3"
p str.delete("^a-z")
# remove the non letter characters



=begin
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing the english alphabet letters.

Problem: Given the input string of characters, return a string in alphabetical order in order of appearance. 
input: string
output: new string with ordered characters


Rules: 
  - white space and punctuation are removed 
  - no numbers in input string 
  - case insensitive 
    - alphabetical order of appearance 
  - 

Data structres:
input: str - "BA"
"BA" -> ["B", "A"]
["B", "A"] -> ["A", "B"]
["A", "B"] -> "AB"

Steps:
  - delete non-alphabetic characters
  - breaking the string into an array of individual characters "[A, ,b, ,B, ,a]"
  - sort the characters in alphabetic order (ignore case in block) 
  - changing the characters into a string

=end

def alphabetized(str)

  clean_str = str.delete("^a-zA-Z")

  char_array = clean_str.chars

  char_array = char_array.sort do |a, b|
    a.downcase <=> b.downcase
  end

  char_array.join
end




p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
p alphabetized("The Holy Bible") == "BbeehHilloTy"



=begin 

given a string, return the maximum length of a non-empty substring made of a single repeated character.


=end 


=begin
PROBLEM
input: string
output: integer representing the logest repeated substring
rules:
  - substring has to be made of a single character (repeated)
  - count all the substring and retun the longest

EXAMPLES
p max_repeated_substring_length("aappplee") == 3
p max_repeated_substring_length("abbcccddddeeeeedcba") == 5 
p max_repeated_substring_length("abcd") == 0 
p max_repeated_substring_length("greencode") == 2 
p max_repeated_substring_length("rruunn") == 2

DATA STRUCTURES
input -> "aappplee"

"aappplee" -> ["aa", "ppp", "ee"] 

slicer -> [index, size]  

output -> 3

ALGORYTHM
initialize sub_string array
interate over the input string - on a new Character strart a nested loop
  loop to iterat till it finds a different character
    find the index of the new character
    create a size variable to slice a substring
    slice the substring and append to substung array
    continue the loop from the last position
return size of logest sting in sub string
=end

def max_repeated_substring_length(str)
# initialize sub_string array
  sub_str_arr = [] # "aappplee"
  size = str.size
# interate over the input string - on a new Character strart a nested loop
  size.times do |start_index|
    current_char = str[start_index]
    size_counter = start_index + 1
    loop do 
      if str[size_counter] == current_char
        size_counter += 1
      else
        slice_size = size_counter - start_index
        sub_str_arr << str[start_index, slice_size]
        break
      end
    end
  end

  answer = sub_str_arr.map {|string| string.size }.max
  return answer if answer > 1
  
  0
end



p max_repeated_substring_length("aappplee") == 3
p max_repeated_substring_length("aappplee") == 3
p max_repeated_substring_length("abbcccddddeeeeedcba") == 5 
p max_repeated_substring_length("abcd") == 0 
p max_repeated_substring_length("greencode") == 2 
p max_repeated_substring_length("rruunn") == 2




def all_substrings(str)
  substrings_arr = [] 

  (0...str.size).each do |idx| #"aappplee"
    (idx...str.size).each do |idx2|
      substrings_arr << str[idx..idx2]
    end 
  end 
  
  substrings_arr.select do |word|
    word.chars.all? { |char| word[0] == char }
  end 

end 



def max_repeated_substring_length(str)
  substrings_arr = all_substrings(str) 

   size_sub_arr = substrings_arr.map { |word| word.size } 

   if size_sub_arr.all? { |num| num == 1 }
    return 0 
   end 

  size_sub_arr.max 
end 


=begin
You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. 

The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). 

You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. 

Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It

will never give you an empty array (that's not a walk, that's standing still!).

Problem: Given the array of string elements, return a boolean value of true if the walk the app givees you will take exactly ten minutes and return to your starting point. 

Input: Array of string elements ('n', 's' 'e', 'w')
Output: Boolean true or false 

Rules: 
  - one minute walk per direction 
    - total size of the array has to be 10 
  - have to return to starting point 
  - catch if the input array is larger or smaller than 10 return false 
  - keep count 
    - if its n increment by 1 
    - if its s decrement by 1 

    - w increment by 1
    - e decrement by 1 

Data Structure:
  - 
    
Steps: 
  - check if the input array is less than ten or greater than 10 
    - return false 
  - initialize north_south (counter) at zero
  - initialize east_west (counter) at zero

  - iterate through input array 
    - when the direction is 'n'
      increment north_south by one 
    - when the direction is 's'
      decrement north_south by one 

    - when the direction is 'e'
      increment east_west by one
    - when the direction is 'w'
      decrement east_west by one   

      use comparison to return a boolean value
        - north_south is equal to zero and east_west is equal to zero 
=end

def is_valid_walk(arr)

  return false if arr.length != 10
  
  ns_counter = 0
  ew_counter = 0

  arr.each do |dir|
    if dir == 'n'
      ns_counter += 1
    elsif dir == 's'
      ns_counter -= 1
    elsif dir == 'e'
      ew_counter += 1
    else
      ew_counter -= 1
    end
  end

  ns_counter == 0  && ew_counter == 0
end


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false

=begin
Check if the input array is equal to 10 and return false otherwise
Initalize a distance hash of each direction from starting point and the distance moved
Iterate over the input array:
- Increment the key value pair that matches the current array element on each iteration.
Check if the opposing directions are equal, and return true if so
- otherwise return false   
=end

def is_valid_walk(directions)
  return false if directions.size != 10
  distance = {n: 0, e: 0, s: 0, w: 0}
  directions.each {|move| distance[move.to_sym] += 1}
  distance[:n] == distance[:s] && distance[:e] == distance[:w]
end




arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }

# on line 1 local variable `arr` is initialized to an array contains integers 1..10.  on line 3 the `Array#each` method is called `arr` and passed the block parameter `n`. Inside the block the `puts` method is invoked on the block parameter `n`.  The `Array#each` method will return original calling object in this case [1..10].  And This outputs '1..10'. explain each method calls the given block once for each element



### What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end
 
puts a
puts b

=begin 
Line 11 local variable `a` is initialized and set to the value of 4. On line 12 local variable `b` is initialized and set to the value of 2.  The `#times` method is invoked on the integer object 2 and passed a block parameter of `a`.  On line 15 the local variable `a` is reassigned to the integer object 5.  Line 16 the `#puts` method is invoked on variable `a` and outputs 5.  On line `19` the `#puts` method is invoked ib local variable `a` outputs 5.  On ine 20 the local variabe `b` outputs 2.  Both line 19 && 20 return nil.  


VARIABLE SHADOWING!!!!! ^^ change the text
when shadowed the outer scope is no longer accessible in the inner scope 

=end 




def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return #returns nil when empty value
    end
  end
end

p count_sheep


=begin

this code will output the following:
```
0
1
2
nil
```


On line 1 the `count_sheep` method is defined.  Inside the method the `times` method is invoked on the integer object 5.  `sheep` is passed as a parameter to the block.  On line 3 the `puts` method is called on the block variable sheep, which attempts to convert the object into a string.  Line 4 there is a if statement which states that if `sheep` is greater than or equal to 2 it returns and exits the `times` method.  on line 10 we pass `count_sheep` as a parameter to the `p` method.  This will return 'sheep' twice.   
=end


def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return #returns nil when empty value
    end
  end
end

p count_sheep
=begin

this code will output the following:
```
0
1
2
nil
```


On line 1 the `count_sheep` method is defined.  
the sheep method is defing from lines 1-8 and doesn't take and parameters. 


Inside the method the `times` method is invoked on the integer object 5.  `sheep` is passed as a parameter to the block.

"within the do..end block passed to the times method on line 2, the sheep parameter is assigned an iteger from 1-5 on each iteration"


On line 3 the `puts` method is called on the block variable sheep, which attempts to convert the object into a string.  
-> parameter sheep
-> puts outputs the value returned by the 'sheep'
 

Line 4 there is a if statement which states that if `sheep` is greater than or equal to 2 it returns and exits the `times` method.  


on line 10 we pass `count_sheep` as a parameter to the `p` method.  This will return 'sheep' twice.

the expression on line 10 returns.... 

a = c + double(d)

d -> expression
double(d) -> expression
c + double(d)-> exp
a = c + double(d) -expression

the expression 'double(d)' on line 10....... Looking at the rest of the expression on line 10 it will 

=end


=begin

Given a string, return a new string that has transformed based on the input:
Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.
For example:
"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.

=end

=begin
PROBLEM
input: string
ouput: new string
given a string with multiple words, reverse the oder of the words and swap the capitalisation around.
- only letter characters and spaces
- upper -> lower, lower case -> upper case


EXAMPLES
swap("Example Input") == "iNPUT eXAMPLE"


DATA STRUCTURES

input: string -> 'Example Input'

word_array ["Example", "Input"] -> ["Input", "Example"]

temp_string -> ["Input", "Example"] -> "Input Example"


temp_string -> "Input Example" -> "iNPUT eXAMPLE"


output: string ->  "iNPUT eXAMPLE"


ALGORITHM
- Copy input sting to an array of words
- reverse the array of words
- join the array into a temporary string
- reverse the casing on the temporary string
- return the temporary string

=end

def swap(str)
  newstr = str.split(' ')
  temp_str = newstr.reverse.join(' ')
  temp_str.swapcase!
end

p swap("Example Inp`ut") == "iNPUT eXAMPLE"