# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  name                 :string
#  state                :string
#  status               :string           default("created"), not null
#  archived             :boolean          default(FALSE)
#  purged               :boolean          default(FALSE)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  pc2                  :boolean          default(FALSE)
#  status_type_id       :integer
#  itar_flag            :boolean          default(FALSE)
#  office_location_type :string
#  domesticity          :string
#  master_id            :integer
#  searchable           :boolean          default(TRUE)
#

class ClientProject < ActiveRecord::Base
  self.table_name = 'projects'
  establish_connection :pc3_rom
  def readonly?
    true
  end

  enum flags: %i[pc2 archived purged]

  def display_name
    "#{id} - #{name}"
  end

  def display_id
    id.to_s
  end

  def current_status
    event_logs(true).select { |e| e.event_type_id < 100 }.first
  end

  def status_type
    Lookup::StatusType.find_by_status status
  end
end
