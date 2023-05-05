# frozen_string_literal: true

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'cls'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end

# rubocop:enable Metrics/MethodLength, Metrics/AbcSize
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def who_is_player_one
  first_move = ''
  loop do
    prompt 'Do you want to go first(f), second(s), or random(r)? (type f, s, or r to select)'
    first_move = gets.chomp.downcase
    break if first_move.start_with?('f', 's', 'r')

    prompt 'incorrect input: select (f/s/r)'
  end
  first_move
end

def player_one?
  player_one_is = who_is_player_one
  computer_player_one = ["Player", "Computer"].sample

  if player_one_is.start_with?("f")
    player_one_is = "Player"
  elsif player_one_is.start_with?("s")
    player_one_is = "Computer"
  elsif player_one_is.start_with?("r")
    player_one_is = computer_player_one
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt 'Sorry not a valid choice'
  end

  brd[square] = PLAYER_MARKER
end

def place_piece!(brd, player)
  if player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(plr)
  if plr == "Player"
    "Computer"
  else
    "Player"
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def score(player_score, computer_score)
  prompt "Player score: #{player_score}; Computer score: #{computer_score}"
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if brd.values_at(*line).count(PLAYER_MARKER) == 3

    return 'Computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def offensive_move(line, board)
  return unless board.values_at(*line).count(COMPUTER_MARKER) == 2

  board.select { |key, value| line.include?(key) && value == INITIAL_MARKER }.keys.first
end

def defensive_move(line, board)
  return unless board.values_at(*line).count(PLAYER_MARKER) == 2

  board.select { |key, value| line.include?(key) && value == INITIAL_MARKER }.keys.first
end

def computer_places_piece!(brd)
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = offensive_move(line, brd)
    break if square
  end

  # defense
  unless square
    WINNING_LINES.each do |line|
      square = defensive_move(line, brd)
      break if square
    end
  end

  # middle square priority
  square = 5 if !square && empty_squares(brd).include?(5)

  # just pick a square
  square ||= empty_squares(brd).sample

  brd[square] = COMPUTER_MARKER
end

player_score = 0
computer_score = 0

loop do
  board = initialize_board
  current_player = player_one?

  loop do
    display_board(board)

    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      player_score += 1
    else
      computer_score += 1
    end
  else
    prompt 'its a tie!'
  end

  score(player_score, computer_score)

  prompt 'Play again? ( y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing Tic Tac Toe! Bye!'
