# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    field :create_game, mutation: Mutations::CreateGame
  end
end
