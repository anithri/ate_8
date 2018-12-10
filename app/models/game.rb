# == Schema Information
#
# Table name: games
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
#  index_games_on_finished_at  (finished_at)
#

class Game < ApplicationRecord
  include UseGlobalRecord

  PER_WORKER_COUNT = 30
  TOTAL_WORKER_COUNT = Worker.count * PER_WORKER_COUNT

  has_many :players
  has_many :board_locations

  validates :name, presence: true, uniqueness: true
  validates :turn, :phase, numericality: {only_integer: true}

  scope :active, ->{where(finished_at: nil)}

  def card_board
    @card_board ||= CardBoard.new( self.board_locations)
  end

  def worker_board

  end
end
