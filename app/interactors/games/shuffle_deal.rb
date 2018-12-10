class Games::ShuffleDeal
  include Interactor
  include ::InteractorValidations

  validates :game, presence: true

  def call
    deal_cards
    deal_workers
  end

  def deal_cards
    board.add_cards('draw', Card.shuffled)

    board.projects.each do |loc|
    end


  end

  def board
    context.game.board
  end

  def deal_workers

  end
end
