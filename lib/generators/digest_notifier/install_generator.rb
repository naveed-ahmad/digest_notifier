module DigestNotifier
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path("../templates", __FILE__)
      class_option :m, :type => :boolean, :default => false, :description => "Place DigestEmail's model to models folder"

      desc "copy migrations, models and configuration files of digest_email to your application."

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
      
      def copy_model
        if options.m?
          Gem.find_files("digest_notifier/models/*.rb").each do |file|
            model_name = file.slpit("/").last
            template file, File.join("app", "models", model_name)
          end
        end
      end

      def copy_configuration
        template "digest_notifier_config.rb", File.join("config", "initializers", "digest_notifier.rb")
      end

      def copy_migration
        migration_template "create_digest_email_groups.rb",     File.join("db", "migrate", "create_digest_email_groups.rb")
        migration_template "create_digest_email_items.rb",      File.join("db", "migrate", "create_digest_email_items.rb")
        migration_template "create_digest_email_deliveries.rb", File.join("db", "migrate", "create_digest_email_deliveries.rb")
      end

      def show
        readme "README"
      end
    end
  end
end
