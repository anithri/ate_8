# frozen_string_literal: true
module Types
  class BoardLocation < Types::BaseObject
    description 'Board Location'

    global_id_field :id
    field :name, String, null: true
    field :slug, String, null: false

    field :cards, Types::Card.connection_type, null: true
    field :workers, Types::Worker.connection_type, null: true
  end
end
