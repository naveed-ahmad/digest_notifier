module DigestNotifier
  class PerformableDigest
    attr_accessor :mailer, :method_name, :args, :options, :digest_group
    
    delegate :method, :to => :object

    def initialize(mailer, method_name, method_args, options)
      #raise NoMethodError, "undefined method `#{method_name}' for #{mailer.inspect}" unless mailer.respond_to?(method_name, true)

      self.mailer       = mailer.to_s
      self.args         = method_args
      self.method_name  = method_name.to_sym
      self.options      = options
    end

    def payload
      args
    end
  end
end
