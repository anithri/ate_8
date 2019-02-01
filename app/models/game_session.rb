# == Schema Information
#
# Table name: game_sessions
#
#  id          :bigint(8)        not null, primary key
#  aasm_state  :string
#  finished_at :datetime
#  name        :string
#  round       :integer          default(0), not null
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
  include AASM

  has_many :players,
           autosave:  true,
           dependent: :destroy

  has_many :board_contents,
           autosave:  true,
           dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :round, :turn, numericality: {only_integer: true}

  default_scope -> { includes(:players, :board_contents) }
  # scope :active, ->{where(finished_at: nil)}

  def gid
    self.to_gid_param
  end

  aasm do
    state :filled_box, initial: true
    state :empty_seats
    state :ready_to_start
    state :start_of_game
    state :start_of_round
    state :player_turn
    state :end_of_round
    state :end_of_game
    state :empty_box

    event :setup_table do
      transitions from: :filled_box, to: :empty_seats
    end

    event :seating_players do
      transitions from: :empty_seats, to: :ready_to_start
    end

    event :starting_game do
      transitions from: :ready_to_start, to: :start_of_game
    end

    event :next_round do
      transitions from: :end_of_round, to: :end_of_game, guard: :final_round?
      transitions from: [:start_of_game, :end_of_round], to: :start_of_round
    end

    event :next_player do
      transitions from: :player_turn, to: :end_of_round, guard: :final_player?
      transitions from: [:start_of_round, :player_turn], to: :player_turn
    end

    event :put_away do
      transitions from: [:end_of_game], to: :empty_box
    end
  end
end
