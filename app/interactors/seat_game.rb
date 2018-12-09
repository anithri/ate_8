class SeatGame
  include Interactor
  include ::InteractorValidations

  validates :new_player_ids, presence: true, length: {is: 4}
  def call
    puts 'in Seatgame.call'
    # TODO
  end

end
