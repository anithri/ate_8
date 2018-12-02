# frozen_string_literal: true

FactoryBot.define do
  factory :internal_project do
    name { 'Project' }
    category { 'GO' }
    start_date { '2018-12-02' }
  end
end
