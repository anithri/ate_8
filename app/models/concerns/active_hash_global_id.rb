module ActiveHashGlobalId
  extend ActiveSupport::Concern

  included do |base|
    include GlobalID::Identification
  end

  def read_attribute_for_serialization(attr)
    if attr == :id || attr == 'id'
      id
    else
      @attributes[attr]
    end
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
