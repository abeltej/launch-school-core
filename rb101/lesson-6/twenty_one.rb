# frozen_string_literal: true

SUITS = %w[H D S C].freeze
VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze
WIN = 21

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == 'A'
             11
           elsif value.to_i == 0 # J, Q, K
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > WIN
end

def detect_results(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > WIN
    :player_busted
  elsif dealer_total > WIN
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif player_total < dealer_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_results(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt 'you busted'
  when :dealer_busted
    prompt 'dealer busted'
  when :player
    prompt 'you won!'
  when :dealer
    prompt 'you lost'
  when :tie
    prompt 'you tied!'
  end
end

def play_again?
  prompt 'Do you want to play again?'
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  prompt 'welcome to 21'

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "Player has #{player_cards[0]} and #{player_cards[1]}, for a total of #{total(player_cards)}"

  # Player turn
  loop do
    player_turn = nil
    loop do
      prompt 'would you like to hit(h) or stay(s)?'
      player_turn = gets.chomp.downcase
      break if %w[h s].include?(player_turn)

      prompt 'sorry must be h or s'
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt 'You hit'
      prompt "Your hand is #{player_cards}"
      prompt "Your total is #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # ... continue on to Dealer turn
  prompt "Dealer's Turn"
  loop do
    break if total(dealer_cards) >= 17

    prompt 'Dealer hits'
    dealer_cards << deck.pop
    prompt "Dealers cards are now #{dealer_cards}"
  end

  if busted?(dealer_cards)
    prompt "Dealer total is #{total(dealer_cards)}"
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}" # if player didn't bust, must have stayed to get here
  end

  # both player and dealer stays - compare cards!
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"

  display_result(dealer_cards, player_cards)

  break unless play_again?
end

prompt 'Thanks for playing'
