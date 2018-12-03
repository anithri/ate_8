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


FactoryBot.define do
  factory :employee do
    username { 'batman' }
    groups { ['Loner', 'Justice League', 'The Outsiders'] }
    display_name { 'Bruce Wayne' }
    is_gone { false }
  end
end
