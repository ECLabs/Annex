class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authorize

  helper_method :current_user

 def current_user
    User.find(session[:user_id])
  end
   protected

def is_user_admin
      if current_user.admin?
        session[:admin] = true
      else 
        session[:admin] = false
        redirect_to books_url
      end
    end

    def authorize
      unless User.find_by(id: session[:user_id])
      	redirect_to login_url, notice: "Please log in to access the reservation system."
      end
    end

end
