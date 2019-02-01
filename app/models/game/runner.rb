module Game
  class Runner
    attr_accessor :game, :session

    def initialize(game)
      @game    = game
      @session = game.game_session
    end
  end
end
