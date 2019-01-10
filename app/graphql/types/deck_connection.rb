# frozen_string_literal: true
module Types
  class DeckConnection < Types::BaseConnection
    edge_type(Types::DeckEdge)

    field :first, Types::Card, null: false
    def first
      object.nodes[0]
    end
  end
end
