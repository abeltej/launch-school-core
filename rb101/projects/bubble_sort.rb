=begin 
 PEDAC
 Problem:
 - Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
 - Input:  array
 - Output: sorted array
 - Rules:
   - Explicit: must use bubble sort methodology 
      - where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.
   - Implicit:

 Examples:
 - Test Case 1:
   - Input: [4,3,78,2,0,2]
   - Output: [0,2,2,3,4,78]

 Data Structure:
 - Array - input argument
 - Integer
 - Array
 - Hash:
   - key:
   - value:

 Algorithm:
 - create a method that takes an argument (array)
 and sorts it using bubble sort algor
   - bubble sort algorith
     - compare two elements switching the larger with the shorter
          if a > b ==> [a, b] ==> [b, a]

 Code:
=end

# [4,3,78,2,0,2]
require 'pry-byebug'
def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1

  loop do # after inner iteration is sorted then one iteration goes in outside loop
    previous_sorted_array = array.map(&:clone)
    (array_length - 1).times do |index| # internal iteration for sort
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
    break if array == previous_sorted_array
  end
  array
end

p bubble_sort([4,3,78,2,0,2]) == [0,2,2,3,4,78]