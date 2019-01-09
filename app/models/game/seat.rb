module Game
  class Seat
    attr_reader :player, :board_space

    DEFAULT_SEAT = {
      worker_ids: [].freeze,
      version: '1.0.0'.freeze
    }.freeze


    def initialize(player, board_space)
      @player = player
      @board_space  = board_space
    end

    delegate :id, :gid, :order, :name, :required_workers, :slug, to: :player
    delegate :bag, :deck, to: :board_space

    def self.locate(player_id)
      player = Player.locate(player_id)
      game = Game::Runner.new(player.game_session)
      game.player(player.id)
    end


  end
end
