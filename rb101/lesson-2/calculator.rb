#Build a command line calculator program that does the following:

#asks for two numbers
#asks for the type of operation to perform: add, subtract, multiply or divide
#displays the result

#Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output. Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().

Kernel.puts("Welcome to Calculator!")
Kernel.puts ("Whats the first number")
number1 = Kernel.gets().chomp()

Kernel.puts("Whats the second number")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1. add 2. subtract 3. multiple 4. divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else operator == "4"
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The results is #{result}")


#Tips

#In a conditional, take care to make sure you're doing an equality comparison (==), as opposed to an assignment (=).
if operator == '1'  # ok
...
if operator = '1'   # will always return true

#Pay attention to what object you're comparing against. It makes a huge difference.
if operator == 1
# vs
if operator == '1'

#Understand the concept of "integer division".

#The String#to_i and String#to_f methods are very handy, but understand their limitations. (Hint: read their documentation.)

#Local variables initialized within an if can be accessed outside of the if.

#In Ruby, if expressions can return a value.

answer = if true
           'yes'
         else
           'no'
         end
Kernel.puts(answer)       # => yes