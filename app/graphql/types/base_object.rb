# frozen_string_literal: true

module Types
  class BaseObject < GraphQL::Schema::Object
    def locate(id:, only:, ignore_missing: false)
      GlobalID::Locator.locate_signed id, only: only, ignore_missing: ignore_missing
    end
  end
end
