class DigestEmailItem < ActiveRecord::Base
  serialize :payload, Array

  belongs_to :digest_email_group
  has_many   :digest_email_deliveries

  class << self
    def with_group(group)
      where :digest_email_group_id => group.id
    end
  end
end
