require 'lookup/graphql'
module Types
  class QueryType < Types::BaseObject
    #region WindTunnel Fields
    field :wind_tunnel, Types::WindTunnel, null: true do
      argument :wind_tunnel_id, ID, required: true, as: :id
    end
    def wind_tunnel(id:)
      Lookup::WindTunnel.find_by_id(id)
    end

    field :wind_tunnels, [Types::WindTunnel], null: false
    def wind_tunnels
      Lookup::WindTunnel.all
    end
    #endregion

    # last of fields
  end
end
