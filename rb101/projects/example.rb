=begin 
 PEDAC
 Problem:
 - 
 - Input: 
 - Output: 
 - Rules:
   - Explicit:
     - 
   - Implicit:
     - 

 Examples:
 - Test Case 1:
   - Input: 
   - Output: 

 Data Structure:
 - Array - 
 - Integer - 
 - Array - 
 - Hash:
   - key: 
   - value: 

 Algorithm:

 Code:


=end


=begin
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

