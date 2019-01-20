module Actions
  class Base
    include Interactor

    def game
      context.game ||= Game.locate(context.game_id)
    end
  end
end
