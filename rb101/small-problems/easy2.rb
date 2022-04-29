# How old is Teddy?
# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
# Teddy is 69 years old!

age = rand(20..200)
puts "Teddy is #{age} years old!"

# How big is the room?

# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).


# Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0




# When will I Retire?

# Build a program that displays when the user will retire and how many years she has to work till retirement.

What is your age? 30
At what age would you like to retire? 70

Its 2016. You will retire in 2056.
You have only 40 years of work to go!




# Greeting a user
# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?




# Odd Numbers
# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.



# Even Numbers
# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.




# Sum or Product of Consecutive Integers
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

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



# String Assignment
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? Think about it for a moment before continuing.
Alice
Bob



name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# What does this print out? Can you explain these results?




# Mutation
# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2