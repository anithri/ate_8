module Actions
  class StartGame < Base

    before do
      context.fail!(error: 'No game_id!') unless context.game_id
      context.game = Game.locate(context.game_id)
      context.fail!(error: 'No game found') unless context.game
    end

    def call
      game.runner.start!
      context.success!
    end
  end
end
