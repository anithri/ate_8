# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    field :setup_table, mutation: Mutations::SetupTable
    field :start_game, mutation: Mutations::StartGame
    field :next_round, mutation: Mutations::NextRound
  end
end
