# == Schema Information
#
# Table name: game_sessions
#
#  id          :bigint(8)        not null, primary key
#  finished_at :datetime
#  name        :string
#  phase       :integer          default(0), not null
#  turn        :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_game_sessions_on_finished_at  (finished_at)
#

class GameSession < ApplicationRecord
  include UseGlobalRecord

  has_many :players,
           autosave:  true,
           dependent: :destroy

  has_many :board_contents,
           autosave:  true,
           dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :turn, :phase, numericality: {only_integer: true}

  default_scope -> { includes(:players, :board_contents) }
  # scope :active, ->{where(finished_at: nil)}

  def gid
    self.to_gid_param
  end
end