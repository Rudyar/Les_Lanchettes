class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      redirect_to kath_root_path, success: "Salut Katherine !"
    else
      redirect_to new_session_path, danger: "Dommage"
    end

  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, info: "Déconnecté"

  end
end
