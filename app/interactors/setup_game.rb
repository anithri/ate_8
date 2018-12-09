class SetupGame
  include Interactor
  include ::InteractorValidations
  attr_accessor :id

  validates :game_id, presence: true

  before do
    context.game = Game.locate context.game_id

  end

  def call
    context.locs = Location.all.each do |loc|
      context.game.board_locations.create(
        location: loc,
        card_ids: [],
        worker_ids: []
      )
    end
  end
end
