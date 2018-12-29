# == Schema Information
#
# Table name: board_data
#
#  id            :bigint(8)        not null, primary key
#  bag_data      :jsonb            not null
#  deck_data     :jsonb            not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  game_datum_id :bigint(8)
#  location_id   :string
#
# Indexes
#
#  index_board_data_on_game_datum_id  (game_datum_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_datum_id => game_data.id)
#

class BoardDatum < ApplicationRecord
  include UseGlobalRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game_datum, autosave: true
  belongs_to_active_hash :location, class_name: 'Board::Location'
  delegate :name, to: :location

  def deck
    @deck ||= ::Board::Deck.new(deck_data)
  end

  def deck=(new_deck)
    self.deck_data = new_deck.to_h
    @deck = new_deck
  end

  def bag
    @bag ||= ::Board::Bag.new(bag_data)
  end
  def bag=(new_bag)
    self.bag_data = new_bag.to_h
    @bag = new_bag
  end

  def grouping
    location&.group
  end

  def changed?
    deck.changed? || bag.changed? || super
  end

  before_save do
    self.deck_data = deck.to_h if deck.changed?
    self.bag_data = bag.to_h if bag.changed?
  end

  alias :changed_for_autosave? :changed?
end
