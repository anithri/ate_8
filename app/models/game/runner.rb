module Game
  class Runner
    attr_reader :game_session

    def initialize(game_session)
      @game_session = game_session
    end

    def board
      @board ||= Game::Board.new(game_session)
    end

    def player(player_id)
      players.find { |pd| pd.id == player_id }
    end

    def seats
      game_session.players.map { |pd| Seat.new(pd, board[pd.slug]) }
    end

    def worker_types
      Bits::Worker.all
    end

    delegate :gid, :name, :turn, :phase, :players, :save, to: :game_session
  end
end
