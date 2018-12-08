module WhitelistedRecord
  class Decorator
    class << self
      attr_reader :configuration
    end

    attr_reader :record

    def initialize(record, whitelist = nil)
      @record = record
      @whitelist = !whitelist.nil? && whitelist.length > 0 ?  whitelist : WhitelistedRecord::Decorator.configuration.whitelist
    end

    def respond_to?(method_name, *args, &block)
      @record.respond_to?(method_name, *args, &block)
    end

    def method_missing(method, *args, &block)
      if @whitelist.nil? || @whitelist.include?(method)
        @record.send(method, *args, &block)
      else
        nil
      end
    end

    def self.configuration
      @configuration ||= WhitelistedRecord::Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end
