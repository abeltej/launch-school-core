=begin 
PROBLEM
Identify expected input and output
Make the requirements explicit
Identify rules
Mental model of the problem (optional)
Find the minimum year number that is larger than given number and has DISTINCT digits.
rules: distinct final number
       first minimum number greater than input


EXAMPLES - Validate understanding of the problem
distinct_digit_year(1987),2013)
distinct_digit_year(2013),2014)
distinct_digit_year(2229),2301)


DATA STRUCTURES - How we represent data that we will work with when converting the input to output.

input:  -> integer -> 
        -> 1987 -> 
          
output:  -> integer -> 2013


ALGORITHM - Steps for converting input to output
do / while loop over  integer incrementing by +1 check if its unique

unique is when each digit doesn't match another one.  


- 
Code w/ intent - Implementation of Algorithm

=end
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

def distinct_digit_year(year)
    loop do
      year += 1 
     break if year.to_s.chars.uniq == year.to_s.chars
  end
end

distinct_digit_year(1987) == 2013
distinct_digit_year(2013) == 2014
distinct_digit_year(2229) == 2301
