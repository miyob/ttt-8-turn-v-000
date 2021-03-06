
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
      true
    else
      false
    end

  end

  def input_to_index(input)
    index = input.to_i - 1

  end

  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    else
      true
    end
  end

  def move(board, index, char = "X")
    board[index] = char

  end

  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    input_to_index(input)
    if valid_move?(board, input.to_i - 1) && !position_taken?(board, input.to_i - 1)
      move(board, input.to_i - 1)
    else
      turn(board)
    end
    display_board(board)
  end
