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
  if index.between?(0,8) == TRUE && position_taken? == FALSE
    return TRUE
  else
    return FALSE
  end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return FALSE
  else
    return TRUE
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
    if valid_move?(board, index) == TRUE
      move(board, index)
      display_board(board)
    else
    turn(board)
end
end
end