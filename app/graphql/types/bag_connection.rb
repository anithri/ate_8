# frozen_string_literal: true
module Types
  class BagConnection < Types::BaseConnection
    edge_type(Types::BagEdge)
  end
end
