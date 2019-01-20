---
to: app/graphql/types/<%= h.inflection.transform(name,['undasherize','underscore'])%>.rb
---
# frozen_string_literal: true
module Types
  class <%= h.inflection.transform(name,['undasherize','camelize']) %> < Types::BaseObject
    description '<%= h.inflection.transform(name,['undasherize','underscore', 'titleize'])%>'

    global_id_field :id
    field :id, ID, null: false
    field :name, String, null: true


  end
end
