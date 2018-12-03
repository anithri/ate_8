# frozen_string_literal: true
module Types
  class TaskCode < Types::BaseObject
    description 'Task Code'

    field :id, ID, null: false
    field :name, String, null: false
    field :short_name, String, null: false
    field :equip_charge_flag, Boolean, null: true
    field :tunnel_charge_flag, Boolean, null: true
    field :equipment_log_reportable, Boolean, null: true
  end
end
