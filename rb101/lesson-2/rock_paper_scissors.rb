# frozen_string_literal: true

VALID_CHOICES = %w[r p s sp l].freeze

# bonus rps
WIN_HAND = {
  rock: %w[lizard scissors],
  paper: %w[rock spock],
  scissors: %w[lizard paper],
  spock: %w[rock scissors],
  lizard: %w[spock paper]
}.freeze

WINNING_PLAYER = 3

def prompt(message)
  puts("=> #{message}")
end

# def win?(first, second) #original RPS
#   (first == 'rock' && second == 'scissors') || (first == 'paper' && second == 'rock') ||
#     (first == 'scissors' && second == 'paper')
# end

def players_win(player, computer)
  WIN_HAND[player.to_sym].include?(computer) # bonus rps
end

def computers_win(computer, player)
  WIN_HAND[computer.to_sym].include?(player)
end

def converter(choice)
  case choice
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 's' then 'scissors'
  when 'sp' then 'spock'
  when 'l' then 'lizard'
  end
end

=begin def display_result(player, computer)  # original rps
  if players_win(player, computer)
    prompt('You Won!')
  elsif computers_win(computer, player)
    prompt('Computer Won!')
  end
end
=end

def display_result(player_total_wins, computer_total_wins)
  prompt("THE FINAL SCORE: #{player_total_wins}, Computer score: #{computer_total_wins}")
end

def current_score(player, computer)
  prompt("Your current score: #{player}, Computer score: #{computer}")
end

def game_over(player_total_wins, computer_total_wins)
  player_total_wins == WINNING_PLAYER || computer_total_wins == WINNING_PLAYER
end

loop do
  player_total_wins = 0
  computer_total_wins = 0
  loop do
    choice = ''
    loop do
      prompt("Choose one: r = rock, p = paper, s = scissors, sp = spock, l = lizard")
      # prompt(VALID_CHOICES.join(', ').to_s)
      choice = gets.chomp
      break if VALID_CHOICES.include?(choice)

      prompt('Thats not a valid choice')
    end

    computer_choice = VALID_CHOICES.sample

    choice = converter(choice)
    computer_choice = converter(computer_choice)

    system("clear") || system("cls")

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    if players_win(choice, computer_choice)
      player_total_wins += 1
    elsif computers_win(computer_choice, choice)
      computer_total_wins += 1
    else
      prompt('its a tie')
    end

    current_score(player_total_wins, computer_total_wins)
    break if game_over(player_total_wins, computer_total_wins)
  end

  display_result(player_total_wins, computer_total_wins)

  prompt('Do you want to play again? (y = yes)')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt('Thank you for playing')
