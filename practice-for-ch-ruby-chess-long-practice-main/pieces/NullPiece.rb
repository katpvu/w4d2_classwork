require_relative "Piece.rb"
require "singleton"

class NullPiece < Piece
    include Singleton
    attr_reader :symbol, :color
    
    def initialize
        @symbol = " "
        @color = :none
    end
end
