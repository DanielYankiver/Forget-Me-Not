class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new

  end

    def create 
      # byebug
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password]) 
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:error] = "Password or Username incorrect"
        redirect_to new_session_path
      end 
    end 


  def page_requires_login
  end

  def login
  end

  def welcome
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/welcome', notice: "Logged out!"
  end

end
