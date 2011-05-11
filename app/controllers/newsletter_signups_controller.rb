class NewsletterSignupsController < ApplicationController
  before_filter :authorize_admin, :only=>:index
  # GET /newsletter_signups
  # GET /newsletter_signups.xml
  def index
    @newsletter_signups = NewsletterSignup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newsletter_signups }
    end
  end
  


  # GET /newsletter_signups/new
  # GET /newsletter_signups/new.xml
  def new
    @NewsletterSignup = NewsletterSignup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @NewsletterSignup }
    end
  end

  # GET /newsletter_signups/1/edit
  def edit
    @NewsletterSignup = NewsletterSignup.find(params[:id])
  end

  # POST /newsletter_signups
  # POST /newsletter_signups.xml
  def create
    @NewsletterSignup = NewsletterSignup.new(params[:newsletter_signup])

    respond_to do |format|
      if @NewsletterSignup.save
        add_message 'You have Successfully subscribed to the newsletter.'
        format.html { redirect_to :back }
        format.xml  { render :xml => @NewsletterSignup, :status => :created, :location => @NewsletterSignup }
      else
        add_error "The email you provided is invalid or has already been subscribed."
        format.html { redirect_to :back }
        format.xml  { render :xml => @NewsletterSignup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newsletter_signups/1
  # PUT /newsletter_signups/1.xml
  def update
    @NewsletterSignup = NewsletterSignup.find(params[:id])

    respond_to do |format|
      if @NewsletterSignup.update_attributes(params[:newsletter_signup])
        add_message = 'NewsletterSignup was successfully updated.'
        format.html { redirect_to(@NewsletterSignup.object) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @NewsletterSignup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletter_signups/1
  # DELETE /newsletter_signups/1.xml
  def destroy
    @NewsletterSignup = NewsletterSignup.find(params[:id])
    @NewsletterSignup.destroy

    respond_to do |format|
      format.html { redirect_to(newsletter_signups_url) }
      format.xml  { head :ok }
    end
  end
  
  protected
    def authorize_admin
      if current_user.try(:admin)
        return true
      else
        redirect_to root_path and return false
      end
    end
  
end