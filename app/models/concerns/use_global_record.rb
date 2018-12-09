module UseGlobalRecord
  extend ActiveSupport::Concern

  included do |base|
    base.extend GlobalID::Locator
    base.extend ClassMethods
  end

  module ClassMethods
    def locate(id, only: self, ignore_missing: false)
      GlobalID::Locator.locate id, only: only, ignore_missing: ignore_missing
    end
    def locate_many(*ids, only: self, ignore_missing: false)
      GlobalID::Locator.locate_many ids.flatten, only: only, ignore_missing: ignore_missing
    end
  end
end
