# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    field :seatGame, mutation: Mutations::SeatGame
  end
end
