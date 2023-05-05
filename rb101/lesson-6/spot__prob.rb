#first
def add_name(arr, name)
  arr = arr << name # mutatues
end

names = ['bob', 'kim']
add_name(names, 'jim')
p names



def fix(value)
  value = value.upcase #=> HELLO
  value.concat('!') # => HELLO!
end

s = 'hello'  # => 'hello'
t = fix(s) # => HELLO!

p s
p t



animal = "dog"
#loop do |x|
# variable shadowing
loop do |animal|
  animal = "cat"
  break
end

puts animal

p animal

def test # => returns nil and evaluates to false in a conditional statement
  puts "written assessment"
end

var = test # returns written assessment

if var # => `nil` is falsy, so not executed
  puts "written assessment"
else
  puts "interview"
end

new_arry = [1, 2, 3].map



=begin
Given the triangle of consecutive odd numbers:
            1
         3     5
      7     9    11
  13    15    17    19
21    23    25    27    29
Calculate the sum of the numbers in the nth row of this triangle. e.g. (Input --> Output)

1 -->  1
2 --> 3 + 5 = 8

Input: Integer (that is the index location of array)
middle: nested array (build to represent the tree array)
Output: Integer (sum of array)

Examples/Rules:

1 -->  1
2 --> 3 + 5 = 8

D: Integer -> nested array -> Integer
A:

Helper Methods: (as needed)

Algorithm:
1. Given a number (n) to represent the row of the triangle of consecutive odd numbers

2. build a nested array where each element of the outer array is an array of the elements, representing each progressive row of the triangle.
    - starting number to represent the initial integer of the triangle
    - triangle_array = []
    - tracking index = 1
    - iterating through until the size of the current array is == n
        set a new empty array
      -  push into an empty array the current number until the empty_array size is current element tracking_index
      - iterate the starting number by two
      - iterate the index by 1
3. return the sum of the last element in the outer array


- starting number to represent the initial integer of the triangle
    - triangle_array = []
    - tracking index = 1
    - iterating through until the size of the current array is == n
        set a new empty array
      -  push into an empty array the current number until the empty_array size is current element tracking_index
      - iterate the starting number by two
      - iterate the index by 1
=end

def triangle(n)
  tri_array = []
  row_num = 1
  loop do
    current_row = []
    until current_row.size > tri_array.size
      current_row << row_num
      row_num += 2
    end
    tri_array << current_row
    break if tri_array.size == n
  end
  tri_array.last.sum
end

p triangle(3)




#------------------------------------------





a = [5, 6, 7, 8].inject([2]) do |result_memo, element|
  result_memo  <<  element.to_s if element % 2 == 0
  result_memo
 end

a = [2, 3, 4].inject(5, :+)
 p a



# mutate method for arrays
 a = %w(a b c)
a[1] = '-'
p a



# Explain what line 9 outputs and is the underlying concept.

a = 1

loop do
  puts a
  a = a + 1
  break
end

puts a

# example of variable scope  the outside variable is accessible by the inner scope
# outputs 2






=begin
local variable scope, especially how local variables interact with method invocations with blocks and method definitions
mutating vs non-mutating methods, pass-by-reference vs pass-by-value
working with collections (Array, Hash, String), and popular collection methods (each, map, select, etc). Review the two lessons on these topics thoroughly.
variables as pointers
puts vs return
false vs nil and the idea of "truthiness"
method definition and method invocation
implicit return value of method invocations and blocks
how the Array#sort method works

The local variable `x` is initialized to the string object `"Hello"``

```ruby
str = "hello"

````
=end

=begin

str = "Hello"
loop do
  str = "Bye"
  break
end

puts str

On line 20 we are initializing the local variable str to the string object "Hello". On line 30 we are invoking the Kernel#loop method and passing a `do..end` block as an argument
On line 31 we reassign str to a new string object "Bye"

So when we output str on line 35 using the Kernel#puts method, it outputs "Bye". This demonstrates the concept of local variable scoping rules with respect to method invocation blocks. Specifically that local variables initialized outside the block are accessible and can be reassigned inside a block.



On line 20 we are initializing the local variable str to the string object "Hello".
In `line 29` we're initializing local variable `str` and assigning to it the string object represented by "Hello". In `line 30' we're calling the loop method and passing in a `do..end' block as an argument. On `line 31` we're reassinging the variable `str` to a new string object "Bye. Then on `line 35` we're calling the method `puts` and passing in `str` variable as an argument. This will output "Bye" to the console because the `str` variable was reassigned from "Hello" to "Bye" in `line 31'. This is representative of the main concept local variable scoping, specifically that local variables initialized in an outer scope are accessible to code in an inner scope.

=end




animal = "dog"

loop do |animal| 
  animal = "cat" 
  break
end

p animal


on `line 10` we are invoking the `puts` method and passing in the `animal` local variable as an argument. This will output `"do"g` and return nil. We intialized the local varibale `animal` on `line 3` to the string object `dog`. Then on `line 6` `animal` variable is being initialized to `cat`  This demonstrates the concept of varibale shadowing.








variables as pointers
  variables act as references to objects in address space