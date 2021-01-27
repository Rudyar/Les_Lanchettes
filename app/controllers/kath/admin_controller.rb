class Kath::AdminController < ApplicationController
  before_action :authenticate_user, only: [:index]

  def index
    @periods = Period.all
  end


end
