class CreateNewsletterSignups < ActiveRecord::Migration
  def self.up
    create_table :newsletter_signups do |t|
      t.string :email
      t.string :link
      t.integer :confirmed
      t.datetime :confirmed_on
      t.timestamps
    end
    add_index :newsletter_signups, :email
    add_index :newsletter_signups, :confirmed
    add_index :newsletter_signups, :confirmed_on
  end

  def self.down
    drop_table :newsletter_signups
  end
end