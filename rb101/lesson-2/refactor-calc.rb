# Walk-through: Refactoring Calculator
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def integer?(input)
  input.to_i.to_s == input # This isn't perfect, however, because while "0" will return true, if we input "00", this method will return false.
end

def integer?(input)
  /^-?\d+$/.match(input) # use regex. Slightly more complex, but we're using the \d regular expression to test against all digits. The ^ means start of string, the + means "one or more" (of the preceding matcher), and the $ means end of string. Therefore, it has to be an integer, and a float, like 4.5 won't match. When there's a match, the match method will return a MatchData object, which will evaluate to true. When there's no match, it'll return nil, which will evaluate to false.
end

def integer?(input)
  Integer(input) rescue false # use built-in conversion method. In Ruby, there's a method called Kernel#Integer that will convert parameters to the method into an integer object. It will, however, raise a TypeError if the input is not a valid integer, so you'll have to handle that. Note: yes, that's a capitalized method in Ruby -- fortunately, that doesn't happen often.
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    "Multiplying"
  when '4'
    'Dividing'
  end
end 

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do 
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("make sure to use a valid name.")
  else
    break
  end
end

prompt("hi #{name}")

loop do # main loop

  number1 = ''
  loop do 
    prompt("Whats the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that does't look like a valid number?")
    end
  end

  number2 = ''
  loop do
    prompt("Whats the second number?")
    number2 = Kernel.gets().chomp()

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
    operator = Kernel.gets().chomp()
  
    if %w( 1 2 3 4).include?(operator)
      break
    else 
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)}  the two numbers...")

  result = case operator
              when '1' 
                number1.to_i() + number2.to_i()
              when '2' 
                number1.to_i() - number2.to_i()
              when '3' 
                number1.to_i() * number2.to_i()
              when '4' 
                number1.to_f() / number2.to_f()
  end

  prompt("The results is #{result}")

  prompt("Do you want to perform another calculation? ( Y to calculate again)") 
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator! ")
