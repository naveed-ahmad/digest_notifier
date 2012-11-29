module DigestEmail
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      class_option :m, :type => :boolean, :default => false, :description => "Place DigestEmail's model to models folder"

      desc "copy migrations,models and configuration files of digest_email to your application."

      def self.next_migration_number(dirname)
        Time.now.strftime("%Y%m%d%H%M%S")
      end

      def copy_model
        if options.m?
          template "digest_email_group_model.rb", File.join("app", "models", "digest_email_group.rb")
          template "digest_email_item_model.rb",  File.join("app", "models", "digest_email_item.rb")
        end
      end

      def copy_configuration
        template "config.rb", File.join("config", "initializers", "digest_email.rb")
      end

      def copy_migration
        migration_template "create_digest_email_groups.rb", File.join("db", "migrate", "create_digest_email_groups.rb")
        migration_template "create_digest_email_items.rb", File.join("db", "migrate", "create_digest_email_items.rb")
      end

      def show
        readme "README"
      end
    end
  end
end
