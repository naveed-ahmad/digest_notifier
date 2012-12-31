class DigestEmailItem < ActiveRecord::Base
  belongs_to :digest_email_group
  has_many   :degest_email_deliveries
end