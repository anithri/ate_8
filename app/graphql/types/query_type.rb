# frozen_string_literal: true

require 'lookup/graphql'
module Types
  class QueryType < Types::BaseObject
    # region WindTunnel Fields
    field :wind_tunnel, Types::WindTunnel, null: true do
      argument :wind_tunnel_id, ID, required: true, as: :id
    end
    def wind_tunnel(id:)
      Lookup::WindTunnel.find_by_id(id)
    end

    field :wind_tunnels, [Types::WindTunnel], null: false do
      argument :closure_status, Types::TunnelClosureType, required: false, default_value: :current
    end
    def wind_tunnels(closure_status:)
      Lookup::WindTunnel.with_closure_status(closure_status)
    end
    # endregion

    # region TaskCode Fields
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
    # endregion

    # region Employee Fields
    field :current_user, Types::Employee, null: false
    def current_user
      context[:current_user]
    end
    field :employee, Types::Employee, null: true do
      argument :Employee_id, ID, required: true, as: :id
    end
    def employee(id:)
      ::Employee.find_by_id(id)
    end

    field :employees, Types::Employee.connection_type, null: false
    def employees
      ::Employee.all
    end
    # endregion

    # region InternalProject Fields
    field :internal_project, Types::InternalProject, null: true do
      argument :internal_project_id, ID, required: true, as: :id
    end
    def internal_project(id:)
      ::InternalProject.find_by_id(id)
    end

    field :internal_projects, Types::InternalProject.connection_type, null: false
    def internal_projects
      ::InternalProject.all
    end
    # endregion

    # region ClientProject Fields
    field :client_project, Types::ClientProject, null: true do
      argument :client_project_id, ID, required: true, as: :id
    end
    def client_project(id:)
      ::ClientProject.find_by_id(id)
    end

    field :client_projects, Types::ClientProject.connection_type, null: false
    def client_projects
      ::ClientProject.all
    end
    # endregion

    # region AllProjectsAutocomplete Fields
    field :all_projects_autocompletes, [Types::AllProjects], null: false
    def all_projects_autocompletes
      ::AllProjectsAutocomplete.all
    end
    # endregion

    # region ProjectsAutocomplete Fields
    field :autocomplete_projects, Types::AutocompleteResults, null: true do
      argument :options, Types::AutocompleteOptions, required: true
    end
    def projects_autocomplete(options:)
      Autocomplete::Projects.call(options)
    end
    # endregion

    # last of fields
  end
end
