class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  helper_method :current_user, :user_signed_in?

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    !current_user.nil?
  end

  def block_access
    redirect_to dashboard_path if user_signed_in?
  end

end
