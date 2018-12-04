# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # region WindTunnel Fields
    field :wind_tunnel, Types::WindTunnel, null: true do
      argument :wind_tunnel_id, ID, required: true, as: :id
    end
    def wind_tunnel(id:)
      GlobalID::Locator.locate id
    end

    field :wind_tunnels, [Types::WindTunnel], null: false do
      argument :closure_status, Types::TunnelClosureType, required: false, default_value: :current
    end
    def wind_tunnels(closure_status:)
      TunnelLog.with_closure_status(closure_status)
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
    field :internal_project, Types::Project, null: true do
      argument :internal_project_id, ID, required: true, as: :id
    end
    def internal_project(id:)
      ::InternalProject.find_by_id(id)
    end

    field :internal_projects, Types::Project.connection_type, null: false
    def internal_projects
      ::InternalProject.all
    end
    # endregion

    # region ClientProject Fields
    field :client_project, Types::Project, null: true do
      argument :client_project_id, ID, required: true, as: :id
    end
    def client_project(id:)
      ::ClientProject.find_by_id(id)
    end

    field :client_projects, Types::Project.connection_type, null: false
    def client_projects
      ::ClientProject.all
    end
    # endregion

    field :autocomplete_projects, Types::AutocompleteResults, null: true do
      argument :term, String, required: true
    end
    def autocomplete_projects(term:)
      Autocomplete::Projects.call(term: term)
    end
    # endregion

    #region LogEntry Fields
    field :log_entry, Types::LogEntry, null: true do
      argument :log_entry_id, ID, required: true, as: :id
    end
    def log_entry(id:)
      ::LogEntry.find_by_id(id)
    end

    field :log_entries, [Types::LogEntry], null: false
    def log_entries
      ::LogEntry.sorted
    end
    #endregion

    # last of fields
  end
end
