# frozen_string_literal: true

# Walk-through: Refactoring Calculator
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0 #  It's not fully accurate, as you cannot enter a 0
end

def integer?(input)
  input.to_i.to_s == input # This isn't perfect, however, because while "0" will return true, if we input "00", this method will return false.
end

def integer?(input)
  /^-?\d+$/.match(input) # use regex. Slightly more complex, but we're using the \d regular expression to test against all digits. The ^ means start of string, the + means "one or more" (of the preceding matcher), and the $ means end of string. Therefore, it has to be an integer, and a float, like 4.5 won't match. When there's a match, the match method will return a MatchData object, which will evaluate to true. When there's no match, it'll return nil, which will evaluate to false.
end

def integer?(input)
  Integer(input)
rescue StandardError
  false
  # use built-in conversion method. In Ruby, there's a method called Kernel#Integer that will convert parameters to the method into an integer object. It will, however, raise a TypeError if the input is not a valid integer, so you'll have to handle that. Note: yes, that's a capitalized method in Ruby -- fortunately, that doesn't happen often.
end

def number?(input)
  integer?(input) || float?(input)
end

def float?(input)
  input.to_f.to_s == input # This method has an edge case though:
end

# 2.6.2 :001 > '1.' == '1.'.to_f.to_s
# => false
# 2.6.2 :002 > '1.'.to_f
# => 1.0

# As you can see, to_f converts 1. to 1.0, which does not match the original string.

def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input) # Option 2 -- use regex. This regex is similar to the regex in the integer? method, except we have to account for more possible formats. We can combine two validations to verify that the input is a valid float. The first validation verifies that there is at least one digit in the input. The second validation incorporates the * which stands for "zero or more", and the ? which stands for "zero or one". This validation can be read as "zero or more digits, followed by an optional period, followed by zero or more digits. This validation will accept all of these formats: 11.11, 11., .11, but not a period by itself. Notice that we had to prefix the . with a backslash. That is because . matches any single character in regex. By escaping it, we tell Ruby that we are looking for the actual period character.
end

def float?(input)
  Float(input)
rescue StandardError
  false
  # use the Kernel#Float method, which is analogous to the Kernel#Integer method from earlier. Just like that method, Float also raises an exception if you don't give it a valid float, so you have to handle it. Note: trailing rescue is a "code smell", so be aware of that. In this specific instance, it's ok, but don't fall into a habit of suppressing errors this way.
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
  end

  x = 'a random line of code'

  word # If we wanted to add code after the case statement, we would need to save the return value of the case into a variable, then make sure to return that variable, or that variable must be the last line in the method.
end

prompt('Welcome to Calculator! Enter your name:')

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt('make sure to use a valid name.')
  else
    break
  end
end

prompt("hi #{name}")

loop do # main loop
  number1 = ''
  loop do
    prompt('Whats the first number?')
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that does't look like a valid number?")
    end
  end

  number2 = ''
  loop do
    prompt('Whats the second number?')
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number
        ")
    end
  end

  operator_prompt = <<-MSG
    what operation would you like to perform?
    1) add
    2) subtract
    3) multiply 
    4) divide 
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w[1 2 3 4].include?(operator)
      break
    else
      prompt('Must choose 1, 2, 3 or 4')
    end
  end

  prompt("#{operation_to_message(operator)}  the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
  end

  prompt("The results is #{result}")

  prompt('Do you want to perform another calculation? ( Y to calculate again)')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the calculator! ')
