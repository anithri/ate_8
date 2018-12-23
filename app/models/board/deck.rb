module Board
  class Deck
    attr_reader :board_datum
    def initialize(board_datum)
      @board_datum = board_datum
    end

    def cards
      board_datum.cards
    end

    def push(*new_cards)
      puts new_cards
      board_datum.cards += new_cards.flatten
    end
  end
end
