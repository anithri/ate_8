# frozen_string_literal: true
require_relative './task_code'
module Types
  class WindTunnel < Types::BaseObject
    description 'Wind Tunnel'

    field :id, ID, null: false
    field :name, String, null: false
    field :short_name, String, null: false
    field :fixed_order, Int, null: false
    field :group_name, String, null: false
    field :tunnel_charge, Boolean, null: true
    field :closed, Boolean, null: true
    field :site, String, null: false
    field :task_codes, [::Types::TaskCode], null: true
    field :log_entries, Types::LogEntry.connection_type, null: false
  end
end
