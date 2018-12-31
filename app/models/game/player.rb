module Game
  class Player
    attr_reader :player_datum, :board_space

    def initialize(player_datum, board_space)
      @player_datum = player_datum
      @board_space  = board_space
    end

    delegate :gid, :order, :name, :slug, to: :player_datum
    delegate :bag, :deck, to: :board_space
    delegate :workers, to: :bag
  end
end
