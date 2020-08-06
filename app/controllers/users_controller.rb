class UsersController < ApplicationController

    def new
       @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Successfully created!"
            redirect_to users_path
        else
            render :new
        end

    end

    def edit
        @user = User.find_by_id(params[:id])
    end

    def update
        @user = User.find_by_id(params[:id])
        if @user.update(user_params)
            flash[:success] = "Successfully updated!"
            redirect_to users_path
        else
            render :edit
        end
    end

    def index
        @users = User.all
    end

    private

    def user_params
        params.require(:user).permit(:username, :email)
    end
end
