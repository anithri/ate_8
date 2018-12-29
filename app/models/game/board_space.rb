module Game
  class BoardSpace
    attr_reader :board_datum
    def initialize(board_datum)
      @board_datum = board_datum
    end

    delegate :name, :deck, :bag, to: :board_datum
  end
end
