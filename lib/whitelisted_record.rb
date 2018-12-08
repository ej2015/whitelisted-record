require "whitelisted_record/version"
require "whitelisted_record/decorator"
require "whitelisted_record/configuration"

module WhitelistedRecord

  def self.new
    Decorator.new
  end

  def self.configure(&block)
    Decorator.configure(&block)
  end

end
