# frozen_string_literal: true
module Types
  class Worker < Types::BaseObject
    description 'Worker'

    global_id_field :id
    field :name, String, null: true
    field :slug, String, null: true
  end
end
