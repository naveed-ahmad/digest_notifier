class DigestEmailItem < ActiveRecord::Base
  serialize :object
  serialize :payload
  belongs_to :digest_email_group
end
