class DeckType < ActiveRecord::Type::Value
  def cast(deck_contents)
    if deck_contents.instance_of? ::Game::Deck
      deck_contents
    elsif deck_contents.is_a? Hash
      ::Game::Deck.new(deck_contents)
    elsif deck_contents.respond_to? :to_s
      ::Game::Deck.new(JSON.parse(deck_contents))
    else
      ::Game::Deck.default
    end
  end

  def serialize(deck)
    deck.to_json
  end
end

