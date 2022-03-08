VALID_CHOICES =  ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  
end
loop do 

  choice = ''
  loop do
    prompt("Choice one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  if (choice == 'rock' && computer_choice == 'scissors') || (choice == 'paper' && computer_choice == 'rock') || 
    (choice == 'scissors' && computer_choice == 'paper')
    prompt("You Won!")
  elsif ( choice == 'rock' && computer_choice == 'paper') || (choice == 'paper' && computer_choice == 'scissors') || (choice == 'scissors') && (computer_choice == 'rock')
    prompt('Computer Won!')
  else 
    prompt("its a tie")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for playing")