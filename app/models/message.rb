# == Schema Information
#
# Table name: messages
#
#  id              :bigint(8)        not null, primary key
#  body            :text
#  icon            :integer
#  theme           :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  game_session_id :bigint(8)
#
# Indexes
#
#  index_messages_on_game_session_id  (game_session_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_session_id => game_sessions.id)
#

class Message < ApplicationRecord
  belongs_to :game_session
  enum icon: [:empty, :smile, :meh, :frown],
       theme: [:primary, :info, :success, :warning, :danger]
end
