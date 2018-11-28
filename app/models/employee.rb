# == Schema Information
#
# Table name: employees
#
#  username           :string
#  roles_mask         :integer          default(0)
#  ldap_attrs         :hstore
#  updated_from_ad_on :datetime #  pc2_attrs          :hstore
#  groups             :text             default([]), is an Array
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  id                 :integer          not null, primary key
#  display_name       :string           default("")
#  gust_id            :integer
#  is_gone            :boolean          default(TRUE)
#  ephemeral          :hstore           default({})
#
# Indexes
#
#  index_employees_on_username  (username) UNIQUE
#

class Employee < ActiveRecord::Base
  LOCAL_LDAP_ATTRIBUTES = [:last_name, :first_name, :initials, :title,
                           :office_phone, :mobile_phone, :office, :email,
                           :full_name, :manager, :ad_username, :dn,
                           :manager_username, :manager_email]
  establish_connection :pc3_rom
  def readonly?
    true
  end

  store_accessor :ldap_attrs, LOCAL_LDAP_ATTRIBUTES

  scope :by_name, -> { order("employees.ldap_attrs -> 'last_name'", "employees.ldap_attrs -> 'first_name'") }
  scope :current, -> { gone_flag_is('true') }
  scope :gone_flag_is, ->(val) { where("users.pc2_attrs -> 'gone_flag' = ?", val.to_s) }
  scope :members_of, ->(*group) { where(Employee.arel_table[:groups].overlap(group)) }
  scope :first_name_is, ->(name) { where("ldap_attrs -> 'first_name' = ?", name) }
  scope :last_name_is, ->(name) { where("ldap_attrs -> 'last_name' = ?", name) }

  def australian?
    ldap_attrs['office'] == 'Sydney'
  end

  def display_name
    full_name
  end

  def human_roles
    groups.sort.join(", ")
  end

  def is_itar_restricted?
    groups.include? 'Itar Restricted'
  end

  def method_missing(method_name, *args, &block)
    method_str = method_name.to_s
    if method_str.start_with?('is_') && method_str.ends_with?('?')
      name = method_str.gsub(/\?$/, '').gsub(/^is_/, '').gsub('_', ' ').titleize
      return true if groups.include?('Fourwinds Admin') || groups.include?(name)
      return false
    else
      super
    end
  end

  def self.lab_techs
	  Employee.members_of('LabTech') + [Employee.find(1)]
  end


end
