class SessionsController < ApplicationController

    skip_before_action :require_login, only: [:new, :create, :destroy]

    def new 
    end

    def create 
        # byebug
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            log_in_user(user.id)
            redirect_to user_path(user)
        else  
            render :new 
        end
    end

    def destroy
        session.destroy
        redirect_to new_session_path 
    end


end
