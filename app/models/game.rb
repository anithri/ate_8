# == Schema Information
#
# Table name: games
#
#  id          :bigint(8)        not null, primary key
#  finished_at :datetime
#  name        :string
#  position    :hstore
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_games_on_finished_at  (finished_at)
#

class Game < ApplicationRecord
  include UseGlobalRecord
  store :position, accessors: [:turn, :phase], coder: Surus::Hstore::Serializer.new

  has_many :players

  validates :name, presence: true, uniqueness: true
  validates :turn, :phase, numericality: {only_integer: true}

  scope :active, ->{where(finished_at: nil)}

  def turn
    super&.to_i || 0
  end
  def phase
    super&.to_i || 0
  end
end
