# frozen_string_literal: true
# == Schema Information
#
# Table name: employees
#
#  id                 :integer          not null, primary key
#  display_name       :string           default("")
#  ephemeral          :hstore
#  groups             :text             default([]), is an Array
#  is_gone            :boolean          default(TRUE)
#  ldap_attrs         :hstore
#  pc2_attrs          :hstore
#  roles_mask         :integer          default(0)
#  updated_from_ad_on :datetime
#  username           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  gust_id            :integer
#
# Indexes
#
#  index_employees_on_username  (username) UNIQUE
#

class Employee < ActiveRecord::Base
  include UseGlobalRecord

  LOCAL_LDAP_ATTRIBUTES = %i[last_name first_name initials title
                             office_phone mobile_phone office email
                             full_name manager ad_username dn
                             manager_username manager_email].freeze

  BASE_ORDER = ["employees.ldap_attrs -> 'last_name'",
                "employees.ldap_attrs -> 'first_name'"].freeze
  establish_connection :pc3_rom

  def readonly?
    true
  end

  store_accessor :ldap_attrs, LOCAL_LDAP_ATTRIBUTES

  scope :by_name, -> { order(*BASE_ORDER) }
  scope :current, -> { gone_flag_is('true') }
  scope :gone_flag_is, ->(val) { where("users.pc2_attrs -> 'gone_flag' = ?", val.to_s) }
  scope :members_of, ->(*group) { array_has(:groups, *group) }
  scope :members_of_any, ->(group) { array_has(:groups, group) }
  scope :first_name_is, ->(name) { where("ldap_attrs -> 'first_name' = ?", name) }
  scope :last_name_is, ->(name) { where("ldap_attrs -> 'last_name' = ?", name) }

  def australian?
    ldap_attrs['office'] == 'Sydney'
  end

  def display_name
    full_name
  end

  def human_roles
    groups.sort.join(', ')
  end

  def respond_to_missing?(method_name, include_private = false)
    group_name(method_name) || super
  end

  def group_name(method_name)
    match = method_name.to_s.match(/^is_(.+)\?/)
    match && match[1]&.titleize
  end

  def method_missing(method_name, *args, &block)
    name = group_name(method_name)
    if name
      members_of(name)
    else
      super
    end
  end

  def self.lab_techs
    Employee.members_of('LabTech') + [Employee.find(1)]
  end
end
