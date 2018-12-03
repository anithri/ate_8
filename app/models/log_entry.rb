# == Schema Information
#
# Table name: entries
#
#  id               :integer          not null, primary key
#  tunnel_log_id    :integer
#  task_code_id     :integer
#  lab_tech_id      :integer
#  start_at         :datetime
#  end_at           :datetime
#  sticky           :boolean
#  projectable_type :string(255)
#  projectable_id   :integer
#  body             :text
#  created_at       :datetime
#  updated_at       :datetime
#  rework           :boolean          default(FALSE)
#  employee_id      :integer
#
# Indexes
#
#  index_entries_on_tunnel_log_id  (tunnel_log_id)
#

#  projectable_type :string
#  projectable_id   :integer
#  body             :text
#  created_at       :datetime
#  updated_at       :datetime
#  rework           :boolean          default("false")
#
# Indexes
#
#  index_entries_on_sticky         (sticky)
#  index_entries_on_tunnel_log_id  (tunnel_log_id)
#

class LogEntry < ActiveRecord::Base
  self.table_name = 'entries'

  UNKNOWN = Employee.new(full_name: 'Unknown')
  TASK_CODE_CHARGE_IDS = Lookup::TaskCode.equipment_log_reportable_codes.map(&:id)
  belongs_to :tunnel_log
  belongs_to :employee
  belongs_to :projectable, polymorphic: true
  belongs_to :lab_tech, class_name: "Employee"
  scope :sorted, ->{order(sticky: :desc, end_at: :desc)}
  scope :for_tunnel, ->(page = 1,per = 20){sorted.page(page).per(per)}
  scope :fresh, ->{ where(rework: false) }
  scope :reworked, ->{where(rework: false) }
  scope :entered_between, ->(from_date, to_date) {
    where('start_at BETWEEN ? AND ?', from_date, to_date)
  }
  scope :tunnels_only, ->{where('tunnel_log_id in (1,2,5,6)')}
  scope :model_shop, ->{where('tunnel_log_id = 7')}
  scope :only_charges, ->{where(task_code_id: TASK_CODE_CHARGE_IDS )}
  scope :kitchen_sink, ->{includes(:employee, :projectable)}

  validates :tunnel_log_id, presence: true
  validates :task_code_id, presence: true
  validates :employee_id, presence: true
  validates :projectable_id, presence: true
  validates :projectable_type, presence: true
  validates :body, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true, date_order: true

  def task_code
    @task_code ||= Lookup::TaskCode.find(self.task_code_id)
  end

  def lab_tech
    @lab_tech ||= self.employee || UNKNOWN
  end

  alias_attribute :project, :projectable

  def wind_tunnel
    @wind_tunnel ||= Lookup::WindTunnel.find(tunnel_log_id)
  end

  def project_name
    return nil unless klass_ok?
    has_text_method?  ?  project.display_name : not_found_msg
  end

  def projectable_klass
    projectable_type.constantize
  end

  def klass_ok?
    self.projectable_type? && self.projectable_id?
  end

  def project_finder
    ProjectFinder.new
  end

  def not_found_msg
    out = self.projectable_id.to_s + "- <not found>"
    out = "GO" + out if self.projectable_type.starts_with?('G')
    out
  end

  def has_text_method?
    project.respond_to? :name
  end

  def duration
    base = ((end_at.to_time - start_at.to_time) / 3600 * 4)
    if base == base.truncate
      return base / 4
    else
     (base.truncate + 1) /4.0
    end
  end

  def short_project_name
    project.display_id
  end

  def projectable_collection
    if projectable_type && projectable_type.present?
      [[projectable.to_global_id, project.display_name]]
    else
      []
    end
  end

  def working_day
    (start_at - 5.hours).to_date
  end

  def project_owner
    self.projectable.to_global_id if self.projectable.present?
  end
  def project_owner=(global_id)
    self.projectable = GlobalID.find global_id
  end
end
