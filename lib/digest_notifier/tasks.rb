require 'digest_notifier'
require 'app/mailer/digest_mailer'

namespace :digest_notifier do
  desc "Send notification in one big digest email"
  task :send_notification_digest => :environment do
    receivers = DigestEmailDelivery.where(:sent_at => nil).group(:receiver_email).map &:receiver_email
    
    receivers.each do |receiver|
      DigestNotifier::DigestMailer.digest_notification(receiver).deliver
    end
  end
end
