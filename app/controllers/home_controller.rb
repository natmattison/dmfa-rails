class HomeController < ApplicationController
  
  def index
    render :index
  end
  
  def about
    
  end
  
  def contact
    
  end
  
  def send_email
    require 'pony'
    Pony.mail(
      :from => params[:name] + "<" + params[:email] + ">",
      :to => ENV['TO_EMAIL'],
      :bcc => ENV['BCC_EMAIL'],
      :subject => params[:name] + " has contacted you from debbiemattisonfineart.com",
      :body => params[:message],
      :port => '587',
      :via => :smtp,
      :via_options => { 
        :address              => 'smtp.sendgrid.net', 
        :port                 => '587', 
        :enable_starttls_auto => true, 
        :user_name            => ENV['SENDGRID_USERNAME'], 
        :password             => ENV['SENDGRID_PASSWORD'], 
        :authentication       => :plain, 
        :domain               => ENV['SENDGRID_DOMAIN']
      })
    
    redirect_to '/contact_success'
  end

  def contact_success
    
  end

  def workshops
  end
  
  def lessons
  end

end
