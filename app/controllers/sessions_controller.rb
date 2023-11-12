class SessionsController < ApplicationController
  include SessionsHelper
  before_action :block_access, only: [:new, :create]

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: 'Entrou na conta!'
    else
      flash.now[:danger] = 'email ou senha inválidos'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url, notice: "Saiu da conta!"
  end
end
