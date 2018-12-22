class Games::DealCards
  include Interactor
  include ::InteractorValidations

  validates :game, presence: true

  def call
  end


  def deal_cards
    # shuffle cards and put into draw pile
    board.draw.deck.push(Card.shuffled)

    board.by_group('projects').each do |project_loc|
      board.deal(to: project_loc.location_id)
    end
  end

  def draw_workers

  end

  def board
    context.game.card_board
  end
end
