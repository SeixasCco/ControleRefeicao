class SessionsController < ApplicationController
  include SessionsHelper
  before_action :block_access, only: [:new, :create]

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to dashboard_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
