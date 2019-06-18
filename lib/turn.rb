def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def index_to_input(input)
  input.to_i - 1
end

def valid_move?(board, index, character = "X")
  if [index].between?(0,8) && board[index] == " " || board[index] == ""
    return TRUE
  else if board[index] == "X" || board[index] == "O"
    return FALSE
  end

def move(board, index, character = "X")
  board[index] = character
end
  
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = index_to_input(input)
  if valid.move?(board, index)
    move(board, index)
    display_board(board)
  else
  turn(board)
end
end