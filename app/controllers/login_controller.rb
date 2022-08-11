require 'rest-client'

class LoginController < ApplicationController
  def index
    @user = User.new
  end

  def login
    @user = User.new(user_params)
    unless @user.username.nil? && @user.password.nil?
      token = LoginService.call(@user.username, @user.password)
      session[:current_user] = KeycloakParamsService.call(token)
    end
    redirect_to root_path
  rescue => e
    logger.error "Error ocurred: #{e.message}"
    logger.error "Backtrace: #{e.backtrace.join("\n")}"
    redirect_to root_path
  end

  def logout

    session.delete(:current_user)
    session.delete(:current_user_roles)
    session.delete(:user_name)
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
