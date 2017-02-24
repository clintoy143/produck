class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_distributor
  helper_method :current_supplier
  
  def current_distributor
    @current_distributor ||= Distributor.find(session[:user_id]) if session[:user_id]
  end
  
  def current_supplier
    @current_supplier ||= Supplier.find(session[:user_id]) if session[:user_id]
  end
  

  def authorize_distributor
    redirect_to '/login' unless current_distributor
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end 
  
end
