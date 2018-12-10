class Games::DealCards
  include Interactor
  include ::InteractorValidations

  validates :game, presence: true

  def call
    board.draw.cards = Card.shuffled

    board.by_group('projects').each do |b_loc|
      board.deal(b_loc.location_id)
    end
  end

  def board
    context.game.board
  end
end
