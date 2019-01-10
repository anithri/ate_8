# frozen_string_literal: true
module Types
  class Worker < Types::BaseObject
    description 'Worker'

    global_id_field :id
    field :name, String, null: false
    field :slug, String, null: false
    field :total, Int, null: true
  end
end
