# frozen_string_literal: true

class LabTech
  def self.all
    Employee.members_of('LabTech').order(:is_gone, :username).all + [Employee.find(1)]
  end
end
