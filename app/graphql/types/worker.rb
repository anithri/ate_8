# frozen_string_literal: true
module Types
  class Worker < Types::BaseObject
    description 'Worker'

    global_id_field :id
    field :total, Int, null: true
    field :name, String, null: false
    field :slug, String, null: false
  end
end
