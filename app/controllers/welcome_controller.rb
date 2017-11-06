class WelcomeController < ApplicationController
  def index
    
    if user_signed_in?
      redirect_to '/welcome/welcome'
    else
      redirect_to new_user_session_path
    end
    
  end
  
  def welcome
  end
  
end
