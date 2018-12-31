module UseGlobalRecord
  extend ActiveSupport::Concern

  included do |base|
    include GlobalID::Identification
    base.extend Ate8Locator
  end

  def gid
    self.send Ate8Locator::GID_METHOD
  end

end
