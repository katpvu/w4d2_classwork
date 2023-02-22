require_relative 'Piece'
require_relative 'stepable'

class King < Piece
  include Stepable
  def initialize
    super
  end

  def symbol
    '♚'.colorize(color)
  end

  protected

  def move_diffs
    # return an array of diffs representing where a King can step to
    [[-1, 0], [1, 0], [0, 1], [0, -1], [1, -1], [1, 1], [-1, -1], [-1, 1]]
  end
end
