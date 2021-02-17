class UsersController < ApplicationController

    before_action :find_user, only: [:show, :destroy]

    skip_before_action :require_login, only: [:new, :create, :destroy]

    def show
    end

    def new 
        @user = User.new 
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            log_in_user(@user.id)
            redirect_to user_path(@user)
        else  
            render :new 
        end
    end

    def destroy 
        @user.destory 
        redirect_to new_session_path
    end

    private 

    def find_user
        @user = User.find(params[:id])
    end

    def user_params 
        params.permit(:name, :password)
    end
end
