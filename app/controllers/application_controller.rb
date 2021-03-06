class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  

  def current_user
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
   !!current_user
  end 
  
  def require_user
    if !logged_in?
      flash[:notice] = 'You must be logged in to perform this action'
      redirect_to root_path
    end
  end
  
  def require_same_user
    if current_user != @user || !logged_in?
      flash[:notice] = 'Only owner of this module may perform this action'
      redirect_to root_path
    end
  end
  
end
