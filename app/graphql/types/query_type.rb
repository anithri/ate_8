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

    #region Employee Fields
    field :employee, Types::Employee, null: true do
      argument :Employee_id, ID, required: true, as: :id
    end
    def employee(id:)
      ::Employee.find_by_id(id)
    end

    field :employees, [Types::Employee], null: false
    def employees
      ::Employee.all
    end
    #endregion

    #region InternalProject Fields
    field :internal_project, Types::InternalProject, null: true do
      argument :internal_project_id, ID, required: true, as: :id
    end
    def internal_project(id:)
      ::InternalProject.find_by_id(id)
    end

    field :internal_projects, [Types::InternalProject], null: false
    def internal_projects
      ::InternalProject.all
    end
    #endregion

    #region ClientProject Fields
    field :client_project, Types::ClientProject, null: true do
      argument :client_project_id, ID, required: true, as: :id
    end
    def client_project(id:)
      ::ClientProject.find_by_id(id)
    end

    field :client_projects, [Types::ClientProject], null: false
    def client_projects
      ::ClientProject.all
    end
    #endregion

    # last of fields
  end
end
