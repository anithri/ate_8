# == Schema Information
#
# Table name: players
#
#  id              :bigint(8)        not null, primary key
#  order           :integer
#  seat_contents   :jsonb            not null
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

  def worker_ids
    seat_contents['worker_ids']
  end
  def worker_ids=(new_workers)
    seat_contents['worker_ids'] = new_workers
  end
  def required_workers
    Game::Bits::Worker.locate_many seat_contents['worker_ids']
  end
  def required_workers=(new_workers)
    self.worker_ids = new_workers.map{|w| w.is_a?(String) ? w : w.gid}
  end

  delegate :name, to: :user
end
