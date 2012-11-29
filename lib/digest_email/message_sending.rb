module DigestEmail
  class DigestProxy < ActiveSupport::BasicObject
    def initialize(target, options)
      @target = target
      @options = options
    end

    def method_missing(method, *args)
      DigestEmailGroup.enqueue({:performable => PerformableDigest.new(@target, method.to_sym, args)}.merge(@options))
    end
  end

  module MessageSending
    def digest(options = {})
      DigestProxy.new(self, options)
    end
  end
end
