class Piece
    attr_reader :color, :board
    attr_accessor :pos

    def initialize (color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        print "#{self.symbol}"
    end

    def empty?
        self.kind_of?(NullPiece)
    end

    def valid_moves
        #possible moves a piece can have based on MOVES[ ]
        #select possible_attacks from (pawns/etc.)

        #ask input / output
    end

    private
    def move_into_check?(end_pos)

    end

end
