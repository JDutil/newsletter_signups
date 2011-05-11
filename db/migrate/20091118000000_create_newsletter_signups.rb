class CreateNewsletterSignups < ActiveRecord::Migration
  def self.up
    create_table :newsletter_signups do |t|
      t.string :email
      t.string :token
      t.integer :confirmed
      t.datetime :confirmed_at
      t.timestamps
    end
    add_index :newsletter_signups, :email
    add_index :newsletter_signups, :confirmed
    add_index :newsletter_signups, :confirmed_at
  end

  def self.down
    drop_table :newsletter_signups
  end
end