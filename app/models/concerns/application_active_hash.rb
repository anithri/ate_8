class ApplicationActiveHash < ActiveHash::Base

  class << self
    alias :unscoped :all
  end
end
