# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    field :seatPlayers, mutation: Mutations::SeatPlayers
  end
end
