# == Schema Information
#
# Table name: players
#
#  id              :bigint(8)        not null, primary key
#  order           :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  game_session_id :bigint(8)
#  user_id         :bigint(8)
#
# Indexes
#
#  index_players_on_game_session_id  (game_session_id)
#  index_players_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_session_id => game_sessions.id)
#  fk_rails_...  (user_id => users.id)
#

class Player < ApplicationRecord
  include UseGlobalRecord
  belongs_to :game_session
  belongs_to :user

  default_scope ->{includes(:user).order(order: :asc)}

  def slug
    "player#{order}"
  end

  delegate :name, to: :user
end
