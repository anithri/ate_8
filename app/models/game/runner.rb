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
      @players ||= Game::Players.new(game_datum)
    end

    delegate :to_signed_global_id, :name, :turn, :phase, :save, to: :game_datum
  end
end
