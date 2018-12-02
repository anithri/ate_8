# frozen_string_literal: true

module Types
  class TunnelClosureType < Types::BaseEnum
    value 'ALL', value: :all, description: 'All Wind Tunnels'
    value 'CURRENT', value: :current, description: 'Currently Open Wind Tunnels'
    value 'CLOSED', value: :closed, description: 'Closed Wind Tunnels'
  end
end
