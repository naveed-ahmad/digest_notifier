class CreateDigestEmailDeliveries < ActiveRecord::Migration
  def self.up
    create_table :digest_email_deliveries do |t|
      t.integer  :digest_email_item_id
      t.integer  :receiver_id
      t.string   :receiver_email
      t.datetime :sent_at
     
      t.timestamps
    end

    add_index :digest_email_deliveries, :digest_email_item_id
    add_index :digest_email_deliveries, :receiver_id
    add_index :digest_email_deliveries, :sent_at
  end

  def self.down
    remove_index :digest_email_deliveries, :digest_email_item_id
    remove_index :digest_email_deliveries, :receiver_id
    remove_index :digest_email_deliveries, :sent_at
    
    drop_table :digest_email_deliveries
  end
end
