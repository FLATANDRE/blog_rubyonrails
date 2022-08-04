class LoginController < ApplicationController
  def index
    @user = User.new
  end

  def login
    @user = User.new(username: params[:username], password: params[:password])
    
  end

  def logout
    
  end
end
