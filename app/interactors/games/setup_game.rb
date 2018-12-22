module Games
  class SetupGame
    include Interactor

    def call
      game = GameDatum.new(name: name,)
      if game.save
        context.errors = []
        context.game   = game
      else
        context.errors = game.errors.full_messages
        context.game   = nil
        context.fail!
      end
    end

    def name
      context.name ||= Faker::VentureBros.organization
    end
  end
end
