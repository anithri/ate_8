# frozen_string_literal: true
module Types
  class BoardLocation < Types::BaseObject
    description 'Board Location'

    global_id_field :id
    field :name, String, null: true
    field :workers, [String], null: true
    field :cards, String, null: true
  end
end
