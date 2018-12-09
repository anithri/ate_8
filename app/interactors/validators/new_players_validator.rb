# frozen_string_literal: true

class NewPlayersValidator < ActiveModel::Validator
  def validate(record)
    unless record.new_player_ids
      record.errors[:new_player_ids] << 'must exist'
      return
    end
    unless record.new_player_ids.is_a? Array
      record.errors[:new_player_ids] << 'must be an array'
      return
    end
    unless record.new_player_ids.length == 4
      record.errors[:new_player_ids] << "4 required"
      return
    end
    players = GlobalID::Locator.locate_many record.new_player_ids,
                                            only: User,
                                            ignore_missing: true
    unless players.length == 4
      record.errors[:new_player_ids] << "invalid or missing users"
      return
    end
  end
end
