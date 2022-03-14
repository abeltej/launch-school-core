# frozen_string_literal: true

# Assignment: Mortgage / Car Loan Calculator

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration

# m = p * (j / (1 - (1 + j)**(-n)))

# monthly_payment
# loan_amount
# monthly_interest_rate
# loan_duration_months

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  Integer(input)
rescue StandardError
  false
  # use built-in conversion method. In Ruby, there's a method called Kernel#Integer that will convert parameters to the method into an integer object. It will, however, raise a TypeError if the input is not a valid integer, so you'll have to handle that. Note: yes, that's a capitalized method in Ruby -- fortunately, that doesn't happen often.
end

def float?(input)
  Float(input)
rescue StandardError
  false
  # use the Kernel#Float method, which is analogous to the Kernel#Integer method from earlier. Just like that method, Float also raises an exception if you don't give it a valid float, so you have to handle it. Note: trailing rescue is a "code smell", so be aware of that. In this specific instance, it's ok, but don't fall into a habit of suppressing errors this way.
end

def number?(input)
  integer?(input) || float?(input)
end

loop do
  prompt('Welcome to Loan Calculator!')

  loan_amount = ''
  loop do
    prompt('What is your loan amount:')
    loan_amount = Kernel.gets.chomp.to_f
    break if number?(loan_amount)
    else
      prompt("Hmm... that does't look like a positive number?")
    end
  end

  annual_interest_rate = ''
  loop do
    prompt('What is your annual interest rate:  (6% = .06)')
    annual_interest_rate = Kernel.gets.chomp.to_f
    break if number?(annual_interest_rate)
    else
      prompt("Hmm... that does't look like a valid number?")
    end
  end
  monthly_interest_rate = annual_interest_rate / 12

  loan_duration_months = ''
  loop do
    prompt('What is your loan duration in months:')
    loan_duration_months = Kernel.gets.chomp.to_f
    break if number?(monthly_interest_rate)
    else
      prompt("Hmm... that does't look like a valid number?")
    end
  end

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-loan_duration_months))
  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")
  break
end
