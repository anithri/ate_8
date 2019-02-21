module Events
  class StartingGame
    include Interactor

    delegate :game, to: :context
    before do
      context.fail!(message: 'Game not found') unless game
    end

    def call
      game.game_session.turn = 1
      game.game_session.round = 1
      game.game_session.starting_game
    end
  end
end
