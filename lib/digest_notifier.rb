require 'digest_notifier/message_sending'

module DigestNotifier
  # Digest email sender
  #
  mattr_accessor :mailer_sender
  
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

  #Name of your awesome application. this would be used in email subject
  mattr_accessor :app_name

  class << self
    def configure
      yield self
    end

    def app_name
      @app_name ||= Rails.application.class.parent.to_s
    end
  end
  
  ActionMailer::Base.class_eval do
    extend DigestNotifier::MessageSending
  end
end

require 'app/mailer/digest_mailer'
require 'digest_notifier/railtie' if defined?(Rails::Railtie)

