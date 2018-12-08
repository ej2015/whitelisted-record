require "whitelisted_record/version"

class WhitelistedRecord
  attr_reader :record

  def initialize(record, whitelist)
    @record = record
    @whitelist = whitelist
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
end
