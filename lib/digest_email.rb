require 'digest_email/message_sending'
require 'digest_email/backend'

module DigestEmail
  mattr_accessor :delete_digest_after_sending
  @@delete_digest_after_sending = true

  mattr_accessor :track_email_count
  @@track_email_count           = true

  class << self
    def configure
      yield self
    end
  end
  
  ActionMailer::Base.class_eval do
    extend DigestEmail::MessageSending
  end
end
