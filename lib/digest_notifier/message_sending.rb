Gem.find_files("app/models/digest_email_*.rb").each {|file| require file }
require 'digest_notifier/performable_digest'

module DigestNotifier
  class DigestProxy < ActiveSupport::BasicObject
    def initialize(target, options)
      @target = target
      @options = options
    end

    def method_missing(method, *args)
      ::DigestEmailGroup.enqueue PerformableDigest.new(@target, method.to_sym, args, @options)
    end
  end

  module MessageSending
    def digest(options = {})
      DigestProxy.new(self, options)
    end
  end
end
