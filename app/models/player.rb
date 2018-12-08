# == Schema Information
#
# Table name: players
#
#  id         :bigint(8)        not null, primary key
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :bigint(8)
#  user_id    :bigint(8)
#
# Indexes
#
#  index_players_on_game_id              (game_id)
#  index_players_on_game_id_and_user_id  (game_id,user_id) UNIQUE
#  index_players_on_user_id              (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (user_id => users.id)
#

class Player < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :game, presence: true, uniqueness: {scope: :user}
  validates :user, presence: true, uniqueness: {scope: :game}

  default_scope ->{includes(:user).order(order: :asc)}

  def slug
    "player#{order}"
  end
  def tag
    "Player #{order}"
  end
  delegate :name, to: :user
end
