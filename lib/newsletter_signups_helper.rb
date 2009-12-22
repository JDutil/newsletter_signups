module NewsletterSignupsHelper
  # def newsletter_signup_button
  #   if File.exists?("#{RAILS_ROOT}/public/images/btn_newsletter_signup.gif")
  #     if File.exists?("#{RAILS_ROOT}/public/images/btn_newsletter_signup_on.gif")
  #       image_submit_tag "/images/btn_newsletter_signup.gif", :onmouseover=>"this.src='/images/btn_newsletter_signup_on.gif';", :onmouseout=>"this.src='/images/btn_newsletter_signup.gif';", :class=>"newsletter-button"
  #     else
  #       image_submit_tag "/images/btn_newsletter_signup.gif", :class=>"newsletter-button"
  #     end
  #   else
  #     submit_tag "Sign Up", :class=>"newsletter-button"
  #   end
  # end

  def newsletter_signup_form( options = {} )
    value = options[:value] ||= "email address"
    render :partial => "newsletter_signups/form", :locals => { :newsletter_signup => NewsletterSignup.new, :value => value }
  end
end