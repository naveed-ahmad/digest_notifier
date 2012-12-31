module DigestEmail
  class PerformableDigest
    attr_accessor :object, :method_name, :args

    delegate :method, :to => :object

    def initialize(object, method_name, args)
      raise NoMethodError, "undefined method `#{method_name}' for #{object.inspect}" unless object.respond_to?(method_name, true)

      if object.respond_to?(:new_record?) && object.new_record?
        raise(ArgumentError, 'Digest cannot be created for records before they\'ve been persisted')
      end

      self.object       = object
      self.args         = args
      self.method_name  = method_name.to_sym
    end

    def mailer_name
      object.class.to_s
    end

    def mailer_name
      object.class.to_s
    end

    def ensure_digest_group
      DigestEmailGroup.find_or_create_by_mailer_name_and_method_name mailer_name, method_name
    end
  end
end
