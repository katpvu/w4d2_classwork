require_relative "pieces"

class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) }
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

    def move_piece(color, start_pos, end_pos)
    # call move_piece! on a dup to check the available positions
        raise "invalid position" if grid[start_pos].kind_of?(NullPiece) || !valid_pos?(end_pos)

        grid[start_pos], grid[end_pos] = grid[end_pos], grid[start_pos]
    end

    def valid_pos?(pos)
    # checking if pos is within 0..7 && empty?
        pos.all? { |coord| coord.between?(0,7) } #&& grid[pos].kind_of?(NullPiece)
    end

    # def add_piece(piece, pos)
    #     # populate board with initial pieces in row 0 & 7
    #     if valid_pos?(pos)
    
    #     #     end
    #     # end


    # end

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
        count_np = 0
        count_p = 0
        (0...grid.length).each do |row|
            (0...grid.length).each do |col|
                if row.between?(2,5)
                    grid[row][col] = NullPiece.new
                    count_np += 1
                else
                    grid[row][col] = Piece.new
                    count_p += 1
                end
            end
        end
        p count_np
        p count_p 
    end
end

if $PROGRAM_NAME == __FILE__
    p b = Board.new


end
