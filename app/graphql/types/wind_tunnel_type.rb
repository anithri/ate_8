# frozen_string_literal: true

class Types::WindTunnel < Types::BaseObject
  description 'Wind Tunnel'

  field :id, ID, null: false
  field :name, String, null: true
end
