module Steps
  class SetupBoard < Base

    before do
      # puts '=' * 30
      # puts self.class if context.debug
    end

    def call
      context.board_contents = BITS::Tile.all.map do |tile|
        BoardContent.new(
          {
            tile:          tile,
            deck_contents: Game::Deck::DEFAULT_DECK.deep_dup,
            bag_contents:  Game::Bag::DEFAULT_BAG.deep_dup
          }
        )
      end
    end
  end
end
