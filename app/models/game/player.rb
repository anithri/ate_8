module Game
  class Player
    attr_reader :player_datum, :board_space

    def initialize(player_datum, board_space)
      @player_datum = player_datum
      @board_space  = board_space
    end

    delegate :id, :gid, :order, :name, :slug, to: :player_datum
    delegate :bag, :deck, to: :board_space
    delegate :workers, to: :bag

    def self.locate(player_datum_id)
      player = PlayerDatum.locate(player_datum_id)
      game = Game::Runner.new(player.game_datum)
      game.player(player.id)
    end
  end
end
