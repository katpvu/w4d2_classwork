require_relative "Piece.rb"

class Pawn < Piece
  def symbol
    "p".colorize(color)
  end

  def moves(pos, color)
    [forward_steps(pos,color)] + side_attacks(pos,color)
  end

  def at_start_row?(pos)
    row , col = pos
    row == 1 || row == 6
  end

  #check position and color (white => -1, black => 1)
  def forward_dir(pos, color)
    case piece.color
    when :white
      return 1
    when :black
      return -1
    end
  end

  def forward_steps(pos, color)
    direction = forward_dir(pos, color)
    steps = at_start_row?(pos) ? 2 : 1
    x = pos[0]
    y = steps * direction
    new_pos = [x, y]
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
