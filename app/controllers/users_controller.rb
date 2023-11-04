class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # When the user is successfully created, a :notice type flash message is set
      redirect_to @user, notice: "Usuário foi criado com sucesso!"
    else
      # When the user is not created due to some validation errors, a :alert type flash message is set
      flash.now[:alert] = @user.errors.full_messages.to_sentence
      logger.debug @user.errors.full_messages.to_sentence
      render action: :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
