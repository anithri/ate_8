module Game
  class BoardSpace
    attr_reader :board_content

    def initialize(board_content)
      @board_content = board_content
    end

    delegate :bag, :board, :deck, :gid, :name, :tile, to: :board_content
    delegate :workers, :worker_summary, to: :bag
    delegate :cards, to: :deck
    delegate :slug, to: :tile

    def self.locate(gid)
      self.new(BoardContent.locate gid)
    end
  end
end
