class CreateDigestEmailGroupss < ActiveRecord::Migration
  def self.up
    create_table :digest_email_groups do |t|
      t.string   :method_name
      t.string   :mailer_name
      t.integer  :sent_email_count   , :default => 0
      t.integer  :pending_email_count, :default => 0
      t.datetime :last_run_at

      t.timestamps
    end

    add_index :digest_email_groups, [:mailer_name, :method_name]
  end

  def self.down
    remove_index :digest_email_groups, [:mailer_name, :method_name]
    drop_table   :digest_email_groups
  end
end
