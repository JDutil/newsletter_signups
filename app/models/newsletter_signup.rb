class NewsletterSignup < ActiveRecord::Base
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :on => :create
  validates_uniqueness_of :email, :message => "has already been subscribed"

  def after_validation_on_create   
    self.link = KeyGen.generate if self.errors.empty?
  end
  
  named_scope :confirmed, :conditions => ["confirmed = ?", true]
  
end