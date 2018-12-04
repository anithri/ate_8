module UseGlobalRecord
  extend ActiveSupport::Concern

  included do |base|
    base.extend GlobalID::Locator
    base.extend ClassMethods
  end

  module ClassMethods
    def find_by_global_id(id)
      GlobalID::Locator.locate id
    end
  end
end
