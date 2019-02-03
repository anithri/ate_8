module Steps
  class SetupGame < Base

    before do
      # puts '=' * 30
      # puts self.class if context.debug
      if !context.name
        context.errors = ['no game name']
        context.fail!(message: context.errors.first)
      elsif !board_contents.present?
        context.errors = ['no board_contents']
        context.fail!(message: context.errors.first)
      elsif !players.present?
        context.errors = ['no players']
        context.fail!(message: context.errors.first)
      end
    end

    def call
      context.game_session = GameSession.new(
        name:           name,
        board_contents: board_contents,
        players:        players
      )
      context.game         = Game::Table.new(game_session)
    end
  end
end
