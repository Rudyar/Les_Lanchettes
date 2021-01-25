class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      flash[:notice] = "Salut Katherine"
      redirect_to kath_root_path
    else
      flash[:error] = "Dommage"
      render :new
    end

  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path

  end
end
