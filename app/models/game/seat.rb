module Game
  class Seat
    attr_reader :player, :board_space, :board

    DEFAULT_SEAT = {
      worker_ids: [].freeze,
      version:    '1.0.0'.freeze
    }.freeze


    def initialize(player, board)
      @player      = player
      @board       = board
      @board_space = board[player.slug]
    end

    delegate :id, :my_turn, :gid, :order, :name, :required_workers, :slug, to: :player
    delegate :bag, :deck, to: :board_space

    def self.locate(player_id)
      player = Player.locate(player_id)
      game   = Game::Table.new(player.game_session)
      game.player(player.id)
    end

    def score
      board.active_workers
        .select{|ws| player.required_workers.include?(ws.worker)}
        .sum(&:total)
    end



  end
end
