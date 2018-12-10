class Deck
  attr_accessor :location
  def initialize(location)
    @location = location
    @card_ids = location.card_ids
  end

  def count
    @card_ids.length
  end

  def cards
    Card.locate_many @card_ids
  end

  def add(*new_cards)
    @card_ids.push(*(new_cards.flatten))
  end

  def drop(count)
    @card_ids.pop(count)
  end

  def remove(*cards_to_drop)
    removing = cards_to_drop.flatten.map{|c| c.is_a? Card ? c.gid : c}
    keeping = @card_ids - (@card_ids & cards_to_drop)
    @card_ids = keeping
    removing
  end

end
