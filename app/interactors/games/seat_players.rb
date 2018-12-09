module Games
  class SeatPlayers
    include Interactor
    include ::InteractorValidations
    validates_with NewPlayersValidator
    attr_accessor :new_player_ids

    def call
      game = Game.new(
        players: players,
        name:    name,
      )
      if game.save
        context.errors = []
        context.game   = game
      else
        context.errors = game.errors.full_messages
        context.game   = nil
      end
    end

    def new_player_ids
      context.new_player_ids
    end

    def users
      context.users ||= User.locate_many context.new_player_ids
    end

    def players
      users.shuffle.each_with_index.map { |u, i| Player.new(user: u, order: i + 1) }
    end

    def name
      context.name ||= Faker::VentureBros.organization
    end
  end
end
