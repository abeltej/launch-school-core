=begin

You need to buy before you can sell
Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

PEDAC
Problem: 
- Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
- Input:  array
- Output: array
- Rules:
  - Explicit: 
    - method takes one argument an array of integers
    - method returns an array of two integers
        - values represent the highest and lowest prices
  - Implicit:
    - input array is not empty?
    - must buy before I can sell
Examples:
- Test Case 1:
  - Input: [1, 8, 3, 5]
  - Output: [0, 1]

Data Structure:
- Array - input / output
- Integer - 
- Hash:
  - key:
  - value:
Algorithm:
- create a method that takes one argument (array)
- compare first element against others
    repeat with second element ,,,so on
- sort 
Code:
=end
# require 'pry-byebug'
# one array thats nested
def stock_picker(array)
  new_array = array.each_with_index.map { |element, index| [index, element] } 
  diff_array = []
  new_array.each_with_index do |element, index|
  inner_index = index + 1
    while inner_index < new_array.length
      difference = new_array[inner_index][1] - element[1] # difference between second and first   - do it for each one  nest array 
      diff_array << [index, inner_index, difference]
      inner_index += 1
    end
  end
  ascending_array = diff_array.sort { |a, b| a[2] <=> b[2] }
  ascending_array.last.first(2)
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])  == [1, 4]