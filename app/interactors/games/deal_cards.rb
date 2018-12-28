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
        board_datum.card_ids = []
      end
    end

    def call
      context.game.board.draw.deck.push(::Game::Card.shuffled)
      context.game.board.deal(1, to: 'project1')
    end
  end
end
