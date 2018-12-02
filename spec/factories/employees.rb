# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    username { 'batman' }
    groups { ['Loner', 'Justice League', 'The Outsiders'] }
    display_name { 'Bruce Wayne' }
    is_gone { false }
  end
end
