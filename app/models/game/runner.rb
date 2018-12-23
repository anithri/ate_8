module Game
  class Runner
    attr_reader :game_datum

    def initialize(game_datum)
      @game_datum = game_datum
    end

    def board
      puts game_datum.board_data.inspect
      @board ||= Game::Board.new(game_datum.board_data)
      puts @board
      @board
    end

    def players
      @players ||= Game::Players.new(game_datum.player_data)
    end

    delegate :to_global_id, :name, :turn, :phase, to: :game_datum
  end
end
