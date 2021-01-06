class UsersController < ApplicationController
    def index
        @users = User.all 
    end 

    def home
        @user = User.find(params[:id])
    end 

    def show
        @user = User.find(params[:id])
    end 

    def new 
       @user = User.new 
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user)
        else 
            flash[:errors_array] = @user.errors.full_messages
            redirect_to new_user_path
        end  
    end 

    def edit 
        @user = User.find(params[:id])
    end 

    def update 
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else 
            flash[:errors_array] = @user.errors.full_messages
            redirect_to edit_user_path(@user)
        end 
    end 

    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path 
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :username, :password_digest)
    end 

end
