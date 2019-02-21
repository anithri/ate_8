module Game
  class Table
    attr_reader :game_session

    def initialize(game_session)
      @game_session = game_session
    end

    def board
      @board ||= Game::Board.new(game_session)
    end

    def player(player_id)
      seats.find { |pd| pd.id == player_id }
    end

    def current_player
      seats[round]
    end

    def game_state
      game_session.aasm.current_state.to_s
    end

    def seats
      game_session.players.map { |pd| Seat.new(pd, board) }
    end

    def round
      game_session.turn % seats.length
    end

    def worker_types
      Bits::Worker.all
    end


    delegate :gid, :name, :players, :messages, :save, :turn, :starting_game, to: :game_session
  end
end
