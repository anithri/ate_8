class Deck
  attr_accessor :location
  def initialize(location)
    @location = location
    @card_gids = location.card_gids
  end

  def count
    @card_gids.length
  end

  def cards
    Card.locate_many @card_gids
  end

  def push(*new_cards)
    @card_gids.push(*as_gids(new_cards))
  end

  def pop(count)
    @card_gids.pop(count)
  end

  def remove(*cards_to_drop)
    removing = as_gids(cards_to_drop)
    keeping = @card_gids - (@card_gids & removing)
    @card_gids = keeping
    removing
  end

  def as_gids(objs)
    objs.flatten.map{|c| c.is_a?(Card) ? c.gid : c}
  end

end
