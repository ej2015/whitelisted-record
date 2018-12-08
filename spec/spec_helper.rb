$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "whitelisted_record"
require "active_support/core_ext/object/try"

class AppleDummy
  attr_accessor :brand, :size, :color, :taste

  def initialize(**args)
    @brand = args[:brand]
    @size = args[:size]
    @color = args[:color]
    @taste = args[:taste]

    def expired?(days)
      true
    end

    def eat
      yield
    end
  end
end
