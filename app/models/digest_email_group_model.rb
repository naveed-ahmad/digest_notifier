class DigestEmailGroup < ActiveRecord::Base
  has_many :digest_email_items

  class << self
    def enqueue(args = {})
      performable  = args.delete :performable
      digest_group = performable.ensure_digest_group
      digest_group.create_digest_email_item :payload => performable.payload, :object => performable.object
      digest_group.save
    end
  end
end
