module Games
  class SetupBoard
    include Interactor
    include ::InteractorValidations

    validates :game, presence: true

    def call
      Board::Location.all.each do |loc|
        context.game.board_data.create(
          location:   loc,
          card_ids:   [],
          worker_ids: []
        )
      end
    end
  end
end
