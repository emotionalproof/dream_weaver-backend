class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        users = User.all
        render json: users, status: 200
    end

    def check_login
        @user = User.find_by(username: params[:username])
        render json: @user, status: 200
    end
    
    def show
        render json: @user, status: 200
    end

    def create
        user = User.create!(user_params)
        render json: user, status: 200
    end

    def update
        @user.update!(user_params)
        render json: @user, status: 200
    end

    def destroy
        @user.destroy!
        render json: {}, status: 200
    end
    

    private
    
    def find_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation)
    end
end
