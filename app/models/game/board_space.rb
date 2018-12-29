module Game
  class BoardSpace
    attr_reader :board_datum

    def initialize(board_datum)
      @board_datum = board_datum
    end

    delegate :bag, :deck, :name, to: :board_datum
    delegate :cards, to: :deck
    delegate :workers, to: :bag
  end
end
