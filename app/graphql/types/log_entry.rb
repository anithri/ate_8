# frozen_string_literal: true
module Types
  class LogEntry < Types::BaseObject
    description 'Log Entry'

    field :id, ID, null: false
    field :name, String, null: true
    field :wind_tunnel, Types::WindTunnel, null: false

    field :task_code, Types::TaskCode, null: false
    field :start_at, String, null: false
    field :end_at, String, null: false
    field :sticky, Boolean, null: true
    field :project, Types::Project, null: false
    field :body, String, null: false
    field :rework, Boolean, null: true
    field :employee, Types::Employee, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
  end
end
