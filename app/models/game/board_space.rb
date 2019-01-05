module Game
  class BoardSpace
    attr_reader :board_datum

    def initialize(board_datum)
      @board_datum = board_datum
    end

    delegate :bag, :deck, :location, :gid, :name, :board, to: :board_datum
    delegate :cards, to: :deck
    delegate :workers, to: :bag
    delegate :slug, to: :location

    def self.locate(gid)
      self.new(
            BoardDatum.locate gid
      )
    end
  end
end
