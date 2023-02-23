require_relative "pieces"

class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(8) { Array.new(8, NullPiece.instance) }
        self.populate
    end

    def[](pos) #access pos row, col: piece
        row, col = pos
        @grid[row][col]
    end

    def[]=(pos, val) #re-assigning pos as it moves: piece
        row, col = pos
        @grid[row][col] = val
    end

    # def move_piece(color, start_pos, end_pos)
    # # call move_piece! on a dup to check the available positions
    #     raise "invalid position" if grid[start_pos].kind_of?(NullPiece) || !valid_pos?(end_pos)

    #     if
    #         grid[start_pos], grid[end_pos] = grid[end_pos], grid[start_pos]

    # end

    def valid_pos?(pos)
    # checking if pos is within 0..7 && empty?
        pos.all? { |coord| coord.between?(0,7) } #&& grid[pos].kind_of?(NullPiece)
    end

    def add_piece(piece, pos)
        # populate board with initial pieces in row 0 & 7

        #setting the board pieces only if pos is empty (bishop, king, )


    end

    def checkmate?(color)
        # if possible amount of moves left to the king of opposite color is 1, king = no open positions

    end

    def in_check?(color)
        #if possible amount of moves left to the king of opposite color is 1, but king has open positions

    end

    def find_king(color)
        #checking position of king

    end

    # def pieces


    # end

    # def dup
    #     #duplicate of current board with current positions

    # end

    def move_piece!(color, start_pos, end_pos)
        #map self to reassign start_pos with nil and end_pos with piece

    end

    private

    def populate
        (0...grid.length).each do |row|
            case row
            when 0
                add_first_and_last_rows(:black, row)
            when 1
                (0...grid.length).each do |col|
                    grid([row,col]) = Pawn.new(:black, self, [row,col])
                end
            when 6
                (0...grid.length).each do |col|
                    grid([row,col]) = Pawn.new(:white, self, [row,col])
                end
            when 7
                add_first_and_last_rows(:white, row)
            end
        end
    end

    def add_first_and_last_rows(color, row)
        (0..7).each do |col|
            if col == 0 || col == 7
                grid([row,col]) = Rook.new(color, self, [row, col])
            elsif col == 1 || col == 6
                grid([row,col]) = Knight.new(color, self, [row, col])
            elsif col == 2 || col == 5
                grid([row,col]) = Bishop.new(color, self, [row, col])
            elsif col == 3
                grid([row,col]) = King.new(color, self, [row,col])
            elsif col == 4
                grid([row,col]) = Queen.new(color, self, [row,col])
            end
        end
    end



end

if $PROGRAM_NAME == __FILE__

end

        # populate pieces
        # iterate through row 0 & 7
        # initialize pieces in order + based on color
        # rows ( (white) &  (black)) :
        # rooks (col: 1 &&  )
