class Kath::AdminController < ApplicationController
  before_action :authenticate_user, only: [:index]

  def index
    
  end

  private

  def authenticate_user
    unless current_user
      redirect_to new_session_path
    end
  end

end
