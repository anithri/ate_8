class Games::ShuffleDeal
  include Interactor
  include ::InteractorValidations

  validates :game, presence: true

  def call
    deal_cards
    deal_workers
  end

  def deal_cards


  end

  def deal_workers

  end
end
