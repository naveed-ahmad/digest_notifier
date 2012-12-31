class DigestEmailGroup < ::ActiveRecord::Base
  has_many :digest_email_items
end