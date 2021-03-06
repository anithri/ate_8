module Game
  class BoardSpace
    attr_reader :board_content

    def initialize(board_content)
      @board_content = board_content
    end

    delegate :bag, :board, :deck, :id, :gid, :name, :tile, to: :board_content
    delegate :workers, to: :bag
    delegate :cards, to: :deck
    delegate :slug, to: :tile

    def self.locate(gid)
      bc = BoardContent.locate gid
      g = Game::Table.new(bc.game_session)
      g.board[bc.tile_id]
    end
  end
end
