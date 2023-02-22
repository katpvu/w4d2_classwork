require_relative "cursor.rb"

class Piece
    attr_reader :pos

    def initialize (color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def pos=(val)

    end

    def to_s

    end

    def empty?
        self.pos.nil?
    end

    def valid_moves
        #possible moves a piece can have based on MOVES[ ]
    end

    private
    def move_into_check?(end_pos)

    end

end
