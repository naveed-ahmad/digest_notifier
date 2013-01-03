class DigestEmailGroup < ActiveRecord::Base
  has_many :digest_email_items

  scope :with_pending_emails, joins(:digest_email_items)
  
  def email_header
    I18n::t("digest_notifier.#{i18n_name_space}.header", :default => description)
  end

  def i18n_name_space
    "#{mailer_name}.#{method_name}"
  end

  def mailer_name
    mailer_class.to_s.underscore
  end

  def recipients
    I18n::t("digest_notifier.#{i18n_name_space}.to", :default => recipients)
  end

  def create_digest_item(performable)
    digest_item = digest_email_items.build :payload => performable.payload
    recipients.each do |recipient|
      digest_item.digest_email_deliveries.build :receiver_email => recipient
    end
    
    digest_item.save
  end

  protected

  def init_recipients(options)
    recipients = options[:send_to]
  end
  
  class << self
    def enqueue(performable)
      digest_group = init_digest_group(performable)
      digest_group.create_digest_item(performable)
    end

    def init_digest_group(performable)
      group = DigestEmailGroup.find_or_initialize_by_method_name_and_mailer_class performable.method_name, performable.mailer
      if group.new_record?
        group.init_recipients performable.options
        group.save
      end

      group
    end
  end
end
