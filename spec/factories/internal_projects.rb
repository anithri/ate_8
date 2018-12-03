# frozen_string_literal: true

# == Schema Information
#
# Table name: internal_projects
#
#  id         :integer          not null, primary key
#  category   :string
#  name       :string
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


FactoryBot.define do
  factory :internal_project do
    name { 'Project' }
    category { 'GO' }
    start_date { '2018-12-02' }
  end
end
