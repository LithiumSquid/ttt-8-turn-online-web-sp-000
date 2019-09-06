def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken? == false
    return true
  else
    return false
  end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, character = "X")
  board[index] = character
  return board
end
  
def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  index = input_to_index(answer)
    if valid_move?(board, index) == true
      move(board, index)
      display_board(board)
    else
    turn(board)
end
end
end