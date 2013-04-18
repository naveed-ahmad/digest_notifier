class AddDigestResourceInDigestEmailItems < ActiveRecord::Migration
  def self.up
    add_column :digest_email_items, :digest_resource_type, :string
    add_column :digest_email_items, :digest_resource_id, :integer
  end

  def self.down
    remove_column :digest_email_items, :digest_resource_type
    remove_column :digest_email_items, :digest_resource_id
  end
end
