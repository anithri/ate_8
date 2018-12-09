module Games
  class SetupBoard
    include Interactor
    include ::InteractorValidations

    validates :game, presence: true

    def call
      context.locs = Location.all.each do |loc|
        context.game.board_locations.create(
          location:   loc,
          card_ids:   [],
          worker_ids: []
        )
      end
    end
  end
end
