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

  def workers
    Worker.locate_many worker_ids
  end
  def workers=(new_workers)
    self.worker_ids = new_workers.map{|w| w.to_global_id.to_s}
  end
  def cards
    Card.locate_many card_ids
  end
  def cards=(new_cards)
    self.card_ids = new_cards.map{|c| c.to_global_id.to_s}
  end
end
