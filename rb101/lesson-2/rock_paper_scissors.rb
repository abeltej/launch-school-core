# frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors].freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') || (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You Won!')
  elsif win?(computer, player)
    prompt('Computer Won!')
  else
    prompt('its a tie')
  end
end

loop do
  choice = ''
  loop do
    prompt('Choice one: #{VALID_CHOICES.join(', ')}')
    choice = Kernel.gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('Thats not a valid choice')
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

  display_result(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing')
