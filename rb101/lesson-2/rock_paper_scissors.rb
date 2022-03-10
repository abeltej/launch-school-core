# frozen_string_literal: true

VALID_CHOICES = %w[r p s sp l].freeze

WINNING_HANDS = { rock: ["lizard", "scissors"], paper: ["rock", "spock"], scissors: ["lizard", "paper"], spock: ["rock", "scissors"], lizard: ["spock", "paper"]} #bonus rps

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def win?(first, second) #original RPS
#   (first == 'rock' && second == 'scissors') || (first == 'paper' && second == 'rock') ||
#     (first == 'scissors' && second == 'paper')
# end

def players_win(player, computer) #bonus rps
  WINNING_HANDS[player.to_sym].include?(computer)
end

def computers_win(computer, player)
  WINNING_HANDS[computer.to_sym].include?(player)
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

def display_result(player, computer)
  if players_win(player, computer)
    prompt('You Won!')
  elsif computers_win(computer, player)
    prompt('Computer Won!')
  else
    prompt('its a tie')
  end
end

def current_score(player, computer)
  prompt("Your score: #{player}, Computer score: #{computer}")
end

def game_over([player_total_wins, computer_total_wins])
  if player_total_wins || computer_total_wins = 5
end

loop do
  player_total_wins = 0
  computer_total_wins = 0
  round = 1

  loop do
    choice = ''
    loop do
      puts("Choose one: (r = rock, p = paper, s = scissors, sp = spock, l = lizard")
      prompt("#{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets.chomp

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt('Thats not a valid choice')
      end
    end

    computer_choice = VALID_CHOICES.sample

    choice = converter(choice)
    computer_choice = converter(computer_choice)

    round += 1

    prompt("You choose: #{choice}; Computer choose: #{computer_choice}")

    if players_win
      player_total_wins + 1
    elsif computers_win
      computer_total_wins + 1
    end

    current_score(choice, computer_choice)

    prompt('Do you want to play again?')
    answer = Kernel.gets.chomp
    break unless answer.downcase.start_with?('y')
  end

  break if game_over(player_total_wins, computer_total_wins)

  display_result(player, computer)
end

prompt('Thank you for playing')
