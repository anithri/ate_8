class SeatGame
  include Interactor
  include ::InteractorValidations

  validates :new_player_ids, presence: true, length: {is: 4}

  def call
    context.game = Game.create(
      players:  players,
      name:     name,
      position: {phase: 0, turn: 0}
    )
  end

  def users
    context.users ||= User.locate_many context.new_player_ids
  end

  def players
    users.shuffle.each_with_index.map{|u, i | Player.new(user: u, order: i + 1)}
  end

  def name
    Faker::VentureBros.organization
  end

end
