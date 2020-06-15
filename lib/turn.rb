def turn(board)
  puts 'Please enter 1-9:'
  input = gets.chomp
  index = input_to_index(input)
  valid_move?(board, index)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def move(board, index, token = 'X')
  board[index] = token
end

def input_to_index(input)
  loop do
    break if valid_input?(input)
    turn(board)
  end
  index = input.to_i - 1
end

def valid_input?(input)
  input.to_i.to_s == input
end
