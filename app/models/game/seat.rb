module Game
  class Seat
    attr_reader :player, :board_space

    def initialize(player, board_space)
      @player = player
      @board_space  = board_space
    end

    delegate :id, :gid, :order, :name, :slug, to: :player
    delegate :bag, :deck, to: :board_space
    delegate :workers, to: :bag

    def self.locate(player_id)
      player = Player.locate(player_id)
      game = Game::Runner.new(player.game)
      game.player(player.id)
    end
  end
end
