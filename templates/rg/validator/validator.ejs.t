---
to: app/validators/<%= name %>_validator.rb
className: <% className = h.inflection.camelize(name) %>
---
# frozen_string_literal: true

class <%= className %> < ActiveModel::Validator
  def validate(record)
    if !record
      record.errors[:base] << 'Oops'
    end
  end
end
