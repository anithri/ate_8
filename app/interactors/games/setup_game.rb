module Games
  class SetupGame
    include Interactor

    before do
      puts self.class if context.debug
      if !context.name
        context.errors = ["no game name"]
        context.fail!(message: context.errors.first)
      elsif !context.board_data
        context.errors = ["no board_data"]
        context.fail!(message: context.errors.first)
      elsif !context.player_data
        context.errors = ["no player_data"]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      context.game_data = GameDatum.new(
        name:        context.name,
        board_data:  context.board_data,
        player_data: context.player_data
      )
      context.game      = ::Game::Runner.new(context.game_data)
    end
  end
end
