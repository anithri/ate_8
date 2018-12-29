module Board
  class Deck
    include ActiveModel::Dirty

    DEFAULT_DECK = {
      card_ids: [].freeze,
      version: '1.0.0'.freeze
    }.freeze

    attr_reader :card_ids, :version
    define_attribute_methods :card_ids, :version

    def initialize(deck_data)
      @deck_data = deck_data
      @version = deck_data[:version]
      @card_ids = deck_data[:card_ids] || []
    end

    def cards
      ::Game::Card.locate_many card_ids
    end

    def push(*cards)
      card_ids_will_change! unless cards.flatten.empty?
      card_ids.push(*cards.flatten.map(&:to_s))
    end

    def pop(count = 1)
      card_ids_will_change! unless count == 0 || card_ids.length == 0
      card_ids.pop(count)
    end

    def to_json
      to_h.to_json
    end

    def to_h
      {
        card_ids: card_ids,
        version: version
      }.with_indifferent_access
    end

    def self.default
      new(DEFAULT_DECK.deep_dup)
    end
  end
end
