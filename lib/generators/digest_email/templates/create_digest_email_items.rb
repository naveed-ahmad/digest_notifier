class CreateDigestEmailItems < ActiveRecord::Migration
  def self.up
    create_table :digest_email_items do |t|
      t.integer :digest_email_group_id
      t.text :payload
      t.text :object
      t.datetime :sent_at
      t.string :send_to

      t.timestamps
    end
  end

  def self.down
    drop_table :digest_email_items
  end
end
