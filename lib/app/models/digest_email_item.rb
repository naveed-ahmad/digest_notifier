class DigestEmailItem < ActiveRecord::Base
  serialize :payload, Array

  belongs_to :digest_email_group
  has_many   :digest_email_deliveries, :dependent => :destroy

  class << self
    def with_group(group)
      where :digest_email_group_id => group.id
    end

    def pending_digest_items_for(receiver_email)
      DigestEmailItem.joins(:digest_email_deliveries).where("digest_email_deliveries.sent_at IS NULL AND digest_email_deliveries.receiver_email = ?", receiver_email)
    end
  end
end
