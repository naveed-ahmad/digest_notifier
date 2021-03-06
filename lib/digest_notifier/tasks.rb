require 'digest_notifier'
require 'app/mailer/digest_mailer'

namespace :digest_notifier do
   desc "Cleanup digest items"
   task :clear => :environment do
     [DigestEmailDelivery, DigestEmailGroup, DigestEmailItem].map(&:delete_all)
   end

  desc "Send notification in one big digest email"
  task :send_notification_digest => :environment do
    receivers = DigestEmailDelivery.where(:sent_at => nil).group(:receiver_email).map &:receiver_email
    
    receivers.each do |receiver|
      digest_items = DigestEmailItem.pending_digest_items_for(receiver)
      DigestNotifier::DigestMailer.digest_notification(receiver, digest_items).deliver
    end

    receivers.each do |receiver|
      digest_items = DigestEmailItem.pending_digest_items_for(receiver)
      if DigestNotifier.delete_digest_after_sending
        digest_items.destroy_all
      else
        digest_items.each do |item|
          item.digest_email_deliveries.update_all :sent_at => DateTime.now
        end
      end
    end
  end
end
