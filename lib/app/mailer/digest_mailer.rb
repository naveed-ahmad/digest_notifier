module DigestNotifier
  class DigestMailer < ActionMailer::Base
    default :from => "support@moviepass.com"
    
    def digest_notification(receiver_email)
      @digest_items  = DigestEmailItem.joins(:digest_email_deliveries).where("digest_email_deliveries.receiver_email = ?", receiver_email)
      @digest_groups = @digest_items.group(:digest_email_group_id).map &:digest_email_group
     
      mail :to => receiver_email, :subject => digest_email_subject
    end

    # Used to send digest email for a single digest_group
    def digest_group_notification(receiver_email, digest_group)
      @digest_items = DigestEmailItem.joins(:digest_email_deliveries).where("digest_email_deliveries.receiver_email = ?", receiver_email).group(:digest_email_group_id)
    end

    protected
    #TODO: need to refactor it!
    # Get subject of a digest email
    def digest_email_subject(digest_group = nil)
      if digest_group
        translate_path = "digest_notifier.#{digest_group.i18n_name_space}.email_subjsct"
        "#{DigestNotifier.app_name} #{I18n::t(translate_path, :default => 'todays updates')}"
      else
        "#{DigestNotifier.app_name} #{I18n::t('digest_notifier.email_subject', :default => 'todays updates')}"
      end
    end
  end
end
