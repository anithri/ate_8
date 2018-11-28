# frozen_string_literal: true

class Types::ClientProject < Types::BaseObject
  description 'Client Project'

  field :id, ID, null: false
  field :name, String, null: false
  field :status, String, null: false
  field :itar_flag, Boolean, null: true
end
