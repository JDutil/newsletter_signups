module NewsletterSignupsHelper
  def newsletter_signup_form( options = {} )
    value = options[:value] ||= "email address"
    render :partial => "newsletter_signups/form", :locals => { :newsletter_signup => NewsletterSignup.new, :value => value }
  end
end
