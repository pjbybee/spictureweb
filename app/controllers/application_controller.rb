class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def current_user
    if session[:user_id]
      begin
        @current_user = User.find(session[:user_id])
      rescue
        session[:user_id] = nil
      end
    end unless @current_user

    @current_user     
  end

end
