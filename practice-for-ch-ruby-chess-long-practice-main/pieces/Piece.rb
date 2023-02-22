class Piece
    attr_accessor :pos

    def initialize (color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        
    end

    def empty?
        self.kind_of?(NullPiece)
    end

    def valid_moves
        #possible moves a piece can have based on MOVES[ ]
    end

    private
    def move_into_check?(end_pos)

    end

end
