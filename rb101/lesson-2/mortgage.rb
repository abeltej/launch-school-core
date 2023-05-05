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
end

def float?(input)
  Float(input)
rescue StandardError
  false
end

def number?(input)
  integer?(input) || float?(input)
end

prompt('Welcome to Loan Calculator!')
loop do
  loan_amount = ''
  loop do
    prompt('What is your loan amount:')
    loan_amount = Kernel.gets.chomp.to_f
    break if number?(loan_amount)

    prompt("Hmm... that does't look like a positive number?")
  end

  annual_interest_rate = ''
  loop do
    prompt('What is your annual interest rate:  (6% = .06)')
    annual_interest_rate = Kernel.gets.chomp.to_f
    break if number?(annual_interest_rate)

    prompt("Hmm... that does't look like a valid number?")
  end
  monthly_interest_rate = annual_interest_rate / 12

  loan_duration_months = ''
  loop do
    prompt('What is your loan duration in months:')
    loan_duration_months = Kernel.gets.chomp.to_f
    break if number?(loan_duration_months)

    prompt("Hmm... that does't look like a valid number?")
  end

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-loan_duration_months))
  prompt("Your monthly payment is: $#{format('%<monthly_payment>0.2f', monthly_payment: monthly_payment)}")
  break
end
