# frozen_string_literal: true

# == Schema Information
#
# Table name: internal_projects
#
#  id         :integer          not null, primary key
#  name       :string
#  category   :string
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InternalProject < ActiveRecord::Base
  establish_connection :pc3_rom
  def readonly?
    true
  end

  def display_id
    "#{category}#{id}"
  end

  def display_name
    "#{display_id} - #{name}"
  end
end
