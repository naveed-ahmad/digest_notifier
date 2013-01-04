class DigestEmailGroup < ActiveRecord::Base
  has_many :digest_email_items, :dependent => :destroy

  scope :with_pending_emails, joins(:digest_email_items)
  
  def email_header
    I18n::t("digest_notifier.#{i18n_name_space}.header", :default => description)
  end

  def i18n_name_space
    "#{mailer_name}.#{method_name}"
  end

  def mailer_name
    mailer_class.to_s.split('::').last.underscore
  end

  def digest_recipients
    I18n::t("digest_notifier.#{i18n_name_space}.recipient", :default => recipients).to_s.split(',')
  end

  def create_digest_items(performable)
    digest_item = digest_email_items.build :payload => performable.payload
    digest_recipients.each do |recipient|
      digest_item.digest_email_deliveries.build :receiver_email => recipient.gsub(' ', '')
    end
    
    digest_item.save
  end

  class << self
    def enqueue(performable)
      digest_group = init_digest_group(performable)
      digest_group.create_digest_items(performable)
    end

    def init_digest_group(performable)
      group = DigestEmailGroup.find_or_initialize_by_method_name_and_mailer_class performable.method_name, performable.mailer
      if group.new_record?
        group.recipients =  performable.options[:send_to]
        group.save
      end

      group
    end
  end
end
