module Game
  class BoardSpace
    attr_reader :board_datum
    def initialize(board_datum)
      @board_datum = board_datum
    end

    def deck
      @deck ||= ::Board::Deck.new(board_datum)
    end

    def bag
      @bag ||= ::Board::Bag.new(board_datum)
    end

  end
end
