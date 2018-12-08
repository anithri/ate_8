# frozen_string_literal: true

module Types
  class BaseObject < GraphQL::Schema::Object
    def locate(id:)
      GlobalID::Locator.locate id
    end
  end
end
