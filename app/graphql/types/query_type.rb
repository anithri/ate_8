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

    #region TaskCode Fields
    field :task_code, Types::TaskCode, null: true do
      argument :task_code_id, ID, required: true, as: :id
    end
    def task_code(id:)
      Lookup::TaskCode.find_by_id(id)
    end

    field :task_codes, [Types::TaskCode], null: false
    def task_codes
      Lookup::TaskCode.all
    end
    #endregion

    # last of fields
  end
end
