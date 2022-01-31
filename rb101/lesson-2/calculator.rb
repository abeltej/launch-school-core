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
  result = number1 + number2
end

Kernel.puts("The results is #{result}")
