require 'digest_notifier'

DigestNotifier.configure do |config|
  # Configure the e-mail address which will be sender for DigestEmails
  config.mailer_sender               = "support@#{DigestNotifier.app_name.downcase}.com"
  #Delete digest enteries after sending email
  #false by default
  #config.delete_digest_after_sending = false
  

  #Track count of total sent email per group
  #true by default
  #config.track_email_count           = true
  

  #Send one digest per group, if set to false all email would be send in one Digest.
  #false by default
  #config.digest_per_group            = false
end
