class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def Admins_authorise
   current_user
   if current_user != nil and current_user.role == "admin"
      puts "LOG IN"
     
        #redirect_to login_list_path  
    else 
      flash[:danger] = "Insufficient rights!"
      redirect_to pages_path 
    end
  end
  private

	def current_user_session
	  return @current_user_session if defined?(@current_user_session)
	  @current_user_session = UserSession.find
	end

	def current_user
	  return @current_user if defined?(@current_user)
	  @current_user = current_user_session && current_user_session.user
	end

	helper_method :current_user_session, :current_user
end
