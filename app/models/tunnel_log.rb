# == Schema Information
#
# Table name: tunnel_logs
#
#  id          :integer          not null, primary key
#  slug        :string(255)
#  fixed_order :integer
#  created_at  :datetime
#  updated_at  :datetime
#  retired     :boolean          default(FALSE)
#

class TunnelLog < ApplicationRecord
  has_many :log_entries
  include UseGlobalRecord
  scope :sorted, -> { order(:fixed_order) }
  scope :retired?, -> { where(retired: true) }
  scope :active?, -> { where(retired: false) }


  def self.with_closure_status(status)
    self.where(id: Lookup::WindTunnel.with_closure_status(status).map(&:id))
  end

  def wind_tunnel
    @wind_tunnel ||= Lookup::WindTunnel.find(self.id)
  end

  delegate :short_name, :name, :task_codes, :group_name,
           :tunnel_charge, :closed, :site, to: :wind_tunnel

  def to_param
    self.slug
  end

end
