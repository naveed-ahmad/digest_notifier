require 'active_record'

module Digest
  module Backend
    module ActiveRecord
      class DigestEmail < ::ActiveRecord::Base
        has_many :digest_email_items
      end

      class DigestEmailItem < ::ActiveRecord::Base
        
      end
    end
  end
end