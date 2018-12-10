# == Schema Information
#
# Table name: board_locations
#
#  id          :bigint(8)        not null, primary key
#  card_ids    :string           default([]), is an Array
#  worker_ids  :string           default([]), is an Array
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :bigint(8)
#  location_id :string
#
# Indexes
#
#  index_board_locations_on_game_id                  (game_id)
#  index_board_locations_on_game_id_and_location_id  (game_id,location_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#

class BoardLocation < ApplicationRecord
  include UseGlobalRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game
  belongs_to_active_hash :location
  delegate :name, to: :location
  def grouping
    location&.group
  end

  def deck
    @deck ||= Deck.new(self)
  end

  def bag
    @bag ||= Bag.new(self)
  end

  def add_cards(*new_cards)
    card_ids.push(new_cards.flatten.map(&:gid))
  end
  def remove_cards(count)
    card_ids.pop(count)
  end
  def cards
    Card.locate_many card_ids
  end
  def cards=(new_cards)
    self.card_ids = new_cards.map{|c| c.gid}
  end
end
