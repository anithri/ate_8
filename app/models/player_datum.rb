# == Schema Information
#
# Table name: player_data
#
#  id            :bigint(8)        not null, primary key
#  order         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  game_datum_id :bigint(8)
#  user_id       :bigint(8)
#
# Indexes
#
#  index_player_data_on_game_datum_id  (game_datum_id)
#  index_player_data_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_datum_id => game_data.id)
#  fk_rails_...  (user_id => users.id)
#

class PlayerDatum < ApplicationRecord
  include UseGlobalRecord
  belongs_to :game_datum
  belongs_to :user

  default_scope ->{includes(:user).order(order: :asc)}

  def slug
    "player#{order}"
  end
  delegate :name, to: :user
end
