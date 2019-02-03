module Events
  class Base
    include Interactor

    before do
      context.fail!('No game or game_id passed as arguments') if !game && !game_id
      context.fail!('No game found for game_id')
    end

    delegate :game_id, to: :context

    def game
      context.game ||= Game.locate(game_id)
    end
  end
end
