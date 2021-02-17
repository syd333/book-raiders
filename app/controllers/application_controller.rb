class ApplicationController < ActionController::Base
    helper_method :current_user

    before_action :require_login

    def log_in_user(user_id)
        session[:user_id] = user_id
    end

    def current_user 
        # @current_user ||= User.find_by(id: session[:user_id])
        session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def require_login 
        unless logged_in?
            redirect_to new_session_path
        end
    end


end
