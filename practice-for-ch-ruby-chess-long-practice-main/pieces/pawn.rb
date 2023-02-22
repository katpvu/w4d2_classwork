require_relative "Piece.rb"

class Pawn < Piece
  def initialize
    super
  end

  def symbol

  end

  def moves

  end

  def at_start_row?(pos)
    row , col = pos
    row == 1 || row == 6
  end

  #check position and color (white => -1, black => 1)
  def forward_dir(pos, color)
    case piece.color
    when :black
      return 1
    when :white
      return -1
    end
  end

  def forward_steps(pos)
    direction = forward_dir(pos, color)
    steps = at_start_row?(pos) ? 2 : 1
    steps * direction
  end

  def side_attacks(pos, color)
    possible_attacks = []
    x , y = pos
    direction = []

    case forward_dir(pos, color)
    when 1
      direction += [[1,1], [-1,1]]
    when -1
      direction += [[-1,-1], [1,-1]]
    end

    direction.each do |(dx,dy)|
      pos_after = [x + dx, y + dy]
      possible_attacks << pos_after if board[pos_after].color != self.color
    end
    possible_attacks
  end
end
