class Piece 
    attr_accessor :pos 

    def initialize(color, board, pos)
        @color = color
        @board = board 
        @pos = pos 
    end 

    def to_s 

    end 

    def empty? 
        self.pos.nil? 
    end 

    def valid_moves 
        #possible moves a piece can have based on MOVES[ ]
    end 

end 