module Games
  class SetupBoard
    include Interactor

    before do
      puts self.class if context.debug
    end

    def call
      context.board_data = ::Board::Location.all.map do |loc|
        BoardDatum.new(
          location:   loc,
          deck_data:   Board::Deck::DEFAULT_DECK.deep_dup,
          bag_data: Board::Bag::DEFAULT_BAG.deep_dup
        )
      end
    end
  end
end
