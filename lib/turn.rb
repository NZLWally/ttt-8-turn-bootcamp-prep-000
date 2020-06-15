def turn(board)
  puts 'Please enter 1-9:'
  input = gets.chomp
  
end

def display_board(board)
  puts board[0]|board[1]|board[2]
  puts "-----------"
  puts board[0]|board[1]|board[2]
  puts board[0]|board[1]|board[2]
end

def valid_move?(board, index)
  index.between(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)

end

def move(board, index, token = 'X')
  
end

def input_to_index(input)
  
end
