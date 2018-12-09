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
#  location_id :integer
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
    worker_ids
  end
  def cards
    card_ids
  end
end
