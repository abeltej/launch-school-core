VALID_CHOICES =  ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> message")
end

choice = ''
loop do
  prompt("Choice one: #{VALID_CHOICES.join(',')}")
  choice = Kernel.gets().chomp()

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice")
  end
end

computer_choice = VALID_CHOICES.sample

Kernel.puts("You choose: #{choice}; Computer choose: #{computer_choice}")

if (choice == 'rock' && computer_choice == 'scissors') || (choice == 'paper' && computer_choice == 'rock') || 
  (choice == 'scissors' && computer_choice == 'paper')
  prompt("You Won!")