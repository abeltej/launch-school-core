=begin

A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.


PEDAC Template
==============

1. Read problem out loud.
2. Input: integer
   Output: integer
3. Examples/Rules: must be a double number 
                  if not return number times 2
4. Steps:
5. Helper Methods: (as needed)

Algorithm
---------
check if number is a double number
  count number of digits and check if even or odd
    if even split in half and compare each half to each other 
      if they equal each other then return the number 
      else multiple that number by 2 and return it 


Code
----

=end

def twice(number)
  count = number.to_s.size
  if count % 2 == 0 
    first_half = number.to_s.slice(0, count / 2)
    second_half = number.to_s.slice(count / 2, count / 2)
    if first_half == second_half
      return number
    end
  end
  number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10