# frozen_string_literal: true

class NewPlayersValidator < ActiveModel::Validator
  def validate(record)
    unless record.new_player_ids.is_a? Array
      record.errors[:new_player_ids] << 'New Players must be an array'
      return
    end
    unless record.new_player_ids.length == 4
      record.errors[:new_player_ids] << "Must be 4 new_player_ids"
      return
    end
    players = GlobalID::Locator.locate_many record.new_player_ids,
                                            only: User,
                                            ignore_missing: true
    unless players.length == 4
      record.errors[:new_player_ids] << "Not all users found"
      return
    end
  end
end
