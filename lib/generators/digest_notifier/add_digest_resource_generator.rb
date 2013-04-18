module DigestNotifier
  module Generators
    class AddDigestResourceGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path("../templates", __FILE__)

      desc "Add digest_resource( polymorphic column) in digest_email_item table"

      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          unless @prev_migration_nr
            @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
          else
            @prev_migration_nr += 1
          end
          @prev_migration_nr.to_s
        else
          (current_migration_number(dirname) + 1)
        end
      end

      def copy_migration
        migration_template "add_digest_resource_in_digest_email_items.rb", File.join("db", "migrate", "add_digest_resource_in_digest_email_items.rb")
      end
    end
  end
end
