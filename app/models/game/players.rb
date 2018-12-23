module Game
  class Players
    def initialize(game_data)
      @game_data = game_data
      @player_data = game_data.player_data
    end
  end
end
