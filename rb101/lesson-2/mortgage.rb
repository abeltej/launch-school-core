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
  Integer(input) rescue false # use built-in conversion method. In Ruby, there's a method called Kernel#Integer that will convert parameters to the method into an integer object. It will, however, raise a TypeError if the input is not a valid integer, so you'll have to handle that. Note: yes, that's a capitalized method in Ruby -- fortunately, that doesn't happen often.
end

def float?(input)
  Float(input) rescue false # use the Kernel#Float method, which is analogous to the Kernel#Integer method from earlier. Just like that method, Float also raises an exception if you don't give it a valid float, so you have to handle it. Note: trailing rescue is a "code smell", so be aware of that. In this specific instance, it's ok, but don't fall into a habit of suppressing errors this way.
end

def number?(input)
  integer?(input) || float?(input)
end

loop do 
  prompt("Welcome to Loan Calculator!")

  loan_amount = ''
  loop do
    prompt("What is your loan amount:")
    loan_amount = Kernel.gets().chomp
    if number?(loan_amount)
      break
    else
      prompt("Hmm... that does't look like a valid number?")
    end
  end

  monthly_interest_rate = ''
  loop do
    prompt("What is your monthly interest rate:")
    monthly_interest_rate = Kernel.gets().chomp
    if number?(monthly_interest_rate)
      break
    else
      prompt("Hmm... that does't look like a valid number?")
    end
  end

  loan_duration_months = ''
  loop do
    prompt("What is your loan duration in months:")
    loan_duration_months = Kernel.gets().chomp
    if number?(monthly_interest_rate)
      break
    else
      prompt("Hmm... that does't look like a valid number?")
    end
  end

  monthly_payment = ''
  def loan_calculation(monthly_payment)
    monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 +  j)**(-loan_duration_months)))
  end
  prompt("Your monthly payment is #{monthly_payment}")
end