module Games
  class DealCards
    include Interactor

    before do
      puts self.class if context.debug
      unless context.game
        context.errors = ["no game"]
        context.fail!(message: context.errors.first)
      end

      context.game.game_datum.board_data.each do |board_datum|
        board_datum.deck = Board::Deck.default
      end
    end

    def call
      context.game.board.draw.deck.push(::Game::Card.shuffled)

      Board::Location.projects.each do |loc|
        context.game.board.deal(1, to: loc.id)
      end
    end
  end
end
