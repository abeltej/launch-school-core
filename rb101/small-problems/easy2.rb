# How old is Teddy?
# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
# Teddy is 69 years old!

age = rand(20..200)
puts "Teddy is #{age} years old!"

# How big is the room?
# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{square_feet} square feet)."

# Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

print 'bill amount: '
bill_amount = gets.chomp.to_f

print 'tip percentage: '
tip = gets.chomp.to_f

tip_amount   = (bill_amount * (tip / 100)).round(2)
total = (bill_amount + tip_amount).round(2)

puts "The tip is $#{tip_amount}"
puts "The total is $#{total}"

# When will I Retire?

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# What is your age? 30
# At what age would you like to retire? 70

# Its 2016. You will retire in 2056.
# You have only 40 years of work to go!

print "what is your age: "
age = gets.chomp.to_i

print "what age do you want to retire: "
retire_age = gets.chomp.to_i

current_year = Time.now.year
work_years_to_go = retire_age - age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year}. "
puts  "You have only #{work_years_to_go} years of work to go!"

# Greeting a user
# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

print "what is your name"
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Odd Numbers
# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
value = 1
while value <= 99
  puts value
  value += 2
end

# Even Numbers
# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end


# Sum or Product of Consecutive Integers
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

=begin
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

# String Assignment
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? Think about it for a moment before continuing.
# Alice
# Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# What does this print out? Can you explain these results?
# BOB
# BOB


# Mutation
# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
=end