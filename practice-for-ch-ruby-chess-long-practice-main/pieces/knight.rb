require_relative 'Piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
    # return an array of diffs representing where a Knight can step to
    [
      [2,1], [2,-1], [-2,1], [-2,-1], [1,2], [1,-2], [-1,2], [-1,-2]
    ]
  end
end
