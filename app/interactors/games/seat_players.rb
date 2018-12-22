module Games
  class SeatPlayers
    include Interactor
    include ::InteractorValidations
    validates_with NewPlayersValidator
    attr_accessor :new_player_ids

    def call
      context.game.player_data << players
      context.game.save
    end

    def new_player_ids
      context.new_player_ids
    end

    def users
      context.users ||= User.locate_many new_player_ids
    end

    def players
      users.shuffle.each_with_index.map do |u, i|
        PlayerDatum.new({user_id: u.id, order: i + 1})
      end
    end
  end
end
