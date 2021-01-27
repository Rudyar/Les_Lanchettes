class Kath::PeriodsController < ApplicationController
  before_action :authenticate_user

  def index
    @periods = Period.all
  end

  def new
    @period = Period.new
  end

  def create
    @period = Period.new(period_params)

    if @period.save
      flash[:success] = "Période créée"
      redirect_to kath_root_path
    else
      flash[:danger] = "Impossible de créer la période"
      render :new
    end
  end

  private

  def period_params
    params.require(:period).permit(:title)
  end


end
