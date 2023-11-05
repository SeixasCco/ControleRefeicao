class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Usuário foi criado com sucesso!"
    else
      flash.now[:alert] = @user.errors.full_messages.to_sentence
      logger.debug @user.errors.full_messages.to_sentence
      render action: :new
    end
  end

  def show
    @user = User.find(params[:id])
  end



  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
