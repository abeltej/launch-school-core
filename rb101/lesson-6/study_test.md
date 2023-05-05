### What does the following code return? What does it output? Why? What concept does it demonstrate?
a = 5.2
b = 7.3

a = b

b += 1.1

### What is `a` and `b`? Why?
#Paco

`a` is a local variable that was initialized to reference the float object with a value of `5.2` (on line 2) but was re-assigned to reference the float object referenced by local variable `b` after its intialization on line 3: `7.3`.

On line 7, the object referenced by `b` is re-assigned via the `+` method with `1.1` passed as an argument. This re-assigns `b` to reference the float object with a value of `8.4`. These objects were not modified (as float objects are immutable in Ruby). But as `b` was re-assigned, and `a` was not, `a` still references the same float object, `7.3` while `b` references a new, different object `8.4`

The concept demonstrated here is variables as pointers.

#Abel

`line 2` local variable `a` is initialized and set to the value of 5.2.
`line 3` local variable `b` is initialized and set to the value of 7.3.

`line 5` `a` is set to the reference value of `b`
`line 7` `b` is reassigned to `b` + 1.1

this results in `a` returning 7.3 & `b` returning 8.4 due to the concept of variable as pointers





### Explain how the method `sort_by` functions using the following code.

['cot', 'bed', 'mat'].sort_by do |word|

 word[1]

end

### => [“mat”, “bed”, “cot”]


#Abel

on `line 3` the array object `['cot', 'bed', 'mat']` is initalized and the `sort_by` method is invoked on it.  This method sorts by comparing -1, 0, or 1 <=> ASCIIbetical.  In this case the argument being passed is using the second index of the element referenced by `word` and comparing them to each other.  Since `a` > `e` > `o` this returns a new array sorted as such `[“mat”, “bed”, “cot”]`.

#Paco

On `line 3`, the `sort_by` method is called on the array object `['cot', 'bed', 'mat']` and passed a `do...end` block as an argument. On each iteration, the method will assign each element in turn to the block parameter `word`. Within the block, element reference is used with the `[]` method to return the substring at index 1 of each array element. This return value is then used by `sort_by` to sort the elements of its calling object in ASCIIbetical order.



`sort_by` uses the `<=>` comparison to compare the return values of its block, returning -1 if the first value is less than the next, 0 if they are equal and 1 if the first value is greater.



In this case the return values of the block are the substrings `'o'`, `'e'` and `'a'` which will be sorted to `'a'` `'e'` `'o'` and return a new array: `[“mat”, “bed”, “cot”]`.





#What does the following code return? What does it output? Why? What concept does it demonstrate?


[1, 2, 3].all? do |num|

  num > 2

end


#Abel

On `line 3` the array object `[1, 2, 3]` is initialized and the `all?` method is invoked upon it.  The `num` parameter is referencing each element of the array and is then passed into the block argument where it checks if that element is > 2.  In this case only the 3rd element `3` is > 2 thus this method returns falls bc `all?` only returns true if each iteration of the element of the array is > 2.  

# Paco

This code will return `false`. This is because the `all?` method returns a boolean `true` or `false` if its block returns a truthy value for every element of its calling object.


The expression within the block calls the `>` method on the current element referenced by the block local variable `num` and passes `2` as an argument. If the referenced element is greater than 2 the expression will evalute to true and false otherwise. In this case, the element at index 0 of array `[1, 2, 3]` is not greater than `2` so the block will return `false` on the first iteration and thus the method call will return `false`.




### Example 7

# What is output, what's the return of the each_with_object(). And what concept.

p(

{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|

  hash[value] = key
  hash['ant'] = :a
end

)

{a: 'ant'} => {:a => 'ant'}
key = :a
value = 'ant'

hash['ant'] = :a
hash['bear'] = :b




Given a string, multiply each letter by the most recent preceding number in the string. Return a new string containing only the letters, multiplied by their preceding number.

Problem
Given a string of numbers and letters, return a string of only letters with each letter multiplied by the preceding number

Questions
- what if string starts with a non-digit character? n/a

Rules
- use the number for all chars until new number
- zero means don't include that letter

Examples
'3abc' >> 'aaabbbccc'
'123abc' >> 'aaabbbccc'
'2g4ab13t0gh' >> 'ggaaaabbbbttt'
'1a5b20hi3cw' >> 'abbbbbcccwww'

Data Structures
input: a string
intermediate:
an Integer, current_int, to store current number
a string to store string being built
output: a string

Algorithm
input: a string, input_str >> '123abc'
- create an empty string , result_str >> ''
- create a local variable to store current Integer, current_int initially set to zero
- convert input_str to an array of chars >> ['1', '2', '3', 'a', 'b', 'c']
- iterate through chars
- if char, represents an integer, then convert that str to an Integer and assign to a local variable, current_int
  - test for Integer by seeing if char equals char to Integer to String?
- else push to result_str, char multiplied by current_int
- once finished iterating, return result_str
output: a string

=end

# Code
def mult_string(input_str)
  result_str = ''
  current_int = 0

  input_str.chars.each do |char|
    if char == char.to_i.to_s
      current_int = char.to_i
    else
      result_str << char * current_int
    end
  end

  result_str
end


# Examples / Tests
p mult_string('3abc')        == 'aaabbbccc'
p mult_string('123abc')      == 'aaabbbccc'
p mult_string('2g4ab13t0gh') == 'ggaaaabbbbttt'
p mult_string('1a5b20hi3cw') == 'abbbbbcccwww'






Problem
Given a string of integers, return the number of odd-numbered substrings that can be formed.

Rules
- do not count integers that are even

Odd-numbered substrings?

Examples
'1357'
1 13 135 1357 3 35 357 5 57 7

13471
1 13 134x 1347 13471 3 34x 347 3471 4x 47 471 7 71 1

Data Structures
input: a string of digits, str
intermediate: an array of substrings
output: an integer, representing the number of odd-numbered substrings

Algorithm
input: a string of digits, str >> "13471"
- create an integer variable set to zero, an integer to keep track of how many odd-numbered substrings so far, count >> 0
- convert str to an array of chars >> ["1", "3", "4", "7", "1"]
- do nested iteration
  - outside iterator is going to keep track of the start of the substrings, start_idx, iterate through a range of 0 up to but excluding length of the array >> 0
  - inside iterator will keep track of the end of the substring, end_idx, iterate from start_idx + 1 up to but excluding the size of the array >> 0
  - in the inside iterator, I want to create a substring based on the given start and end
  - check if the substring is odd, if so, then increment count
- return count
output: an integer, representing the number of odd-numbered substrings

=end

# code
def solve(str)
  count = 0
  arr = str.chars

  (0...arr.size).each do |start_idx|
    (start_idx...arr.size).each do |end_idx|
      count += 1 if arr[start_idx..end_idx][-1].to_i.odd?
    end
  end

  count
end




p solve("1341")     == 7
p solve("1357")     == 10
p solve("13471")    == 12
p solve("134721")   == 13
p solve("1347231")  == 20
p solve("13472315") == 28
PRECEDENCE is order of operations 



arr = [1]

for i in arr do
  a = 'World'
end

puts a # what will be output by this line?



snack = 'fries'
num = 10
  
num.times do |num|
  puts "I'll love #{snack} even when I'm #{num * 10}!"
end
  
# What will this output and why?

object referenced by 
