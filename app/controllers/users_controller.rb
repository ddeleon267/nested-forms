class UsersController < ApplicationController

    def new
       @user = User.new
        2.times { @user.children.build }

    end

    def create
        binding.pry
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
        binding.pry
        params.require(:user).permit(:username, :email, children_attributes: [
            :name,
            :nick_name
        ])
    end
end
