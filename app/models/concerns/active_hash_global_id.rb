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

  def gid
    self.to_gid_param
  end

  module ClassMethods
    def locate(gid, only: self, ignore_missing: false)
      GlobalID::Locator.locate gid, only: only, ignore_missing: ignore_missing
    end

    def locate_many(*gids, only: self, ignore_missing: false)
      GlobalID::Locator.locate_many gids.flatten, only: only, ignore_missing: ignore_missing
    end
  end

end
