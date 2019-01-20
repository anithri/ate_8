# frozen_string_literal: true
module Types
  class Project < Types::BaseObject
    description 'Project'

    global_id_field :id
    field :id, ID, null: false
    field :name, String, null: false
    field :slug, String, null: false
    field :is_met, Boolean, null: true
    field :workers, Types::BagConnection, null: false
    field :card, Types::Card, null: false
  end
end
