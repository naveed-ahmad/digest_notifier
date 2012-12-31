require 'digest_email/message_sending'
require 'digest_email/backend'

module DigestEmail
  #Delete digest enteries after sending email
  #false by default
  mattr_accessor :delete_digest_after_sending
  @@delete_digest_after_sending = false

  #Track count of email send per group
  #true by default
  mattr_accessor :track_email_count
  @@track_email_count           = true

  #Send one digest per group, if set to false all email would be send in one Digest.
  #false by default
  mattr_accessor :digest_per_group
  @@digest_per_group            = false

  class << self
    def configure
      yield self
    end
  end
  
  ActionMailer::Base.class_eval do
    extend DigestEmail::MessageSending
  end
end
