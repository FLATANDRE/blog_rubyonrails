class LoginController < ApplicationController
  def index
    @user = User.new
  end

  def login
    @user = User.new(user_params)
    unless @user.username.nil? && @user.password.nil?
      token = LoginService.call(@user.username, @user.password)
      print token
    end
  end

  def logout
    
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
