---
to: app/graphql/types/<%= name %>_attributes.rb
---
# frozen_string_literal: true
module Types
  class <%= h.inflection.camelize(name) %>Attributes < Types::BaseInputObject
    description 'Attributes for <%= h.inflection.titleize(name)%>'

    argument :id, ID, required: true
  end
end
