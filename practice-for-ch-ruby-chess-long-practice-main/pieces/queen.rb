require_relative 'Piece'
require_relative 'slideable'

class Queen < Piece
  include Slideable
  

  def symbol
    '♛'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a queen can move
    # a queen can move horizontally (across rows and columns) and diagonally
    self.diagonal_dirs + self.horizontal_and_vertical_dirs
  end
end


# Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
