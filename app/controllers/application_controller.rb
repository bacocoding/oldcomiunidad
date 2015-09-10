class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   helper_method :current_apto 

  def current_apto 
  @current_apto ||= Apto.find(session[:apto_id]) if session[:apto_id] 
  end
  def require_apto 
  redirect_to '/login' unless current_apto 
  end
end