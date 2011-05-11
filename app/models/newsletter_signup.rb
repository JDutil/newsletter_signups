class NewsletterSignup < ActiveRecord::Base
  
  validates :email, 
    :presence => true, 
    :uniqueness => { :message => "has already been subscribed." }, 
    :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
    
  before_save :set_token
  
  scope :confirmed, where(:confirmed => true)
  
  protected
    
    def set_token
      self.token = Digest::SHA1.hexdigest(Time.now.to_s + rand(987654321).to_s)[1..32] unless token.present?
    end
  
end
