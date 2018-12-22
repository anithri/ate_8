module Game
  class Runner
    def initialize(game_datum)
      @game_datum = game_datum
    end

    def board
      @board ||= Board::Collection.new(@game_datum.board_data)
    end

    def players
      @players ||= @game_datum.player_data
    end
  end
end
