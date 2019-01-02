module Game
  class Runner
    attr_reader :game_datum

    def initialize(game_datum)
      @game_datum = game_datum
    end

    def board
      @board ||= Game::Board.new(game_datum)
    end

    def players
      game_datum.player_data.map{|pd| Player.new(pd, board[pd.slug])}
    end

    def worker_types
      Worker.all
    end

    delegate :gid, :name, :turn, :phase, :save, to: :game_datum
  end
end
