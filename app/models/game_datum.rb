# == Schema Information
#
# Table name: game_data
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
#  index_game_data_on_finished_at  (finished_at)
#

class GameDatum < ApplicationRecord
  include UseGlobalRecord

  has_many :player_data,
           autosave:  true,
           dependent: :destroy

  has_many :board_data,
           autosave:  true,
           dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :turn, :phase, numericality: {only_integer: true}

  # scope :active, ->{where(finished_at: nil)}
end
