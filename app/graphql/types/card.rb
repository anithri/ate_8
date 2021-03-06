# frozen_string_literal: true
module Types
  class Card < Types::BaseObject
    description 'Card'

    field :id, ID, null: false
    field :name, String, null: true
    field :slug, String, null: true
    field :requiredWorkers, Types::BagConnection, null: false, method: :workers
  end
end
