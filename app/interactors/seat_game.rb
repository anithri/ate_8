class SeatGame
  include Interactor
  include ::InteractorValidations

  validates :new_player_ids, presence: true, length: {is: 4}
  def call
    puts 'in SeatGame.call'
    # TODO
  end

  def players
    context.players ||= GlobalID::Locator.locate()
  end

end
