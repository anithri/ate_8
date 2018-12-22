# == Schema Information
#
# Table name: board_data
#
#  id            :bigint(8)        not null, primary key
#  card_ids      :string           default([]), is an Array
#  worker_ids    :string           default([]), is an Array
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

  belongs_to :game_datum
  belongs_to_active_hash :location, class_name: 'Board::Location'
  delegate :name, to: :location

  def grouping
    location&.group
  end
end
