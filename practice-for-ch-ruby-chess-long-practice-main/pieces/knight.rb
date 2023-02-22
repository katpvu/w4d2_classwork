require_relative 'Piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable
  def initialize
    super
  end

  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
    # return an array of diffs representing where a Knight can step to
    
  end
end