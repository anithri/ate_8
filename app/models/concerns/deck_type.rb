class DeckType < ActiveRecord::Type::Value
  def cast(deck_data)
    if deck_data.instance_of? ::Board::Deck
      deck_data
    elsif deck_data.is_a? Hash
      ::Board::Deck.new(deck_data)
    elsif deck_data.respond_to? :to_s
      ::Board::Deck.new(JSON.parse(deck_data))
    else
      ::Board::Deck.default
    end
  end

  def serialize(deck)
    deck.to_json
  end
end

