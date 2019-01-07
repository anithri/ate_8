# == Schema Information
#
# Table name: board_contents
#
#  id              :bigint(8)        not null, primary key
#  bag_contents    :jsonb            not null
#  deck_contents   :jsonb            not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  game_session_id :bigint(8)
#  tile_id         :string           not null
#
# Indexes
#
#  index_board_contents_on_game_session_id  (game_session_id)
#  index_board_contents_on_tile_id          (tile_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_session_id => game_sessions.id)
#

class BoardContent < ApplicationRecord
  include UseGlobalRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game_session, autosave: true
  belongs_to_active_hash :tile, class_name: 'Game::Bits::Tile'
  delegate :grouping, :name, to: :tile

  def deck
    @deck ||= ::Game::Deck.new(self.deck_contents)
  end

  def deck=(new_deck)
    self.deck_contents = new_deck.to_h
    @deck = new_deck
  end

  def bag
    @bag ||= ::Game::Bag.new(self.bag_contents)
  end
  def bag=(new_bag)
    self.bag_contents = new_bag.to_h
    @bag = new_bag
  end

  def changed?
    deck.changed? || bag.changed? || super
  end

  before_save do
    self.deck_contents = deck.to_h if deck.changed?
    self.bag_contents = bag.to_h if bag.changed?
  end

  alias :changed_for_autosave? :changed?
end
