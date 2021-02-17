class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def show 
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new
    end
    
    def create
        @user = User.create(user_params)
        redirect_to user_path(@user.user_id)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = user.find(params[:id])
        @user.destroy
        redirect_to user_path
    end



    private

    def user_params
        param.require(:user).permit(:name, :age)
    end

end
