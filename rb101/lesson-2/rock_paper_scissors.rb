VALID_CHOICES =  ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  if (player == 'rock' && computer == 'scissors') || (player == 'paper' && computer == 'rock') || 
    (player == 'scissors' && computer == 'paper')
    prompt("You Won!")
  elsif ( player == 'rock' && computer == 'paper') || (player == 'paper' && computer == 'scissors') || (player == 'scissors') && (computer == 'rock')
    prompt('Computer Won!')
  else 
    prompt("its a tie")
  end  
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

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for playing")