# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    field :create_game, mutation: Mutations::CreateGame
    field :start_game, mutation: Mutations::StartGame
  end
end
