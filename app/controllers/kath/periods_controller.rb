class Kath::PeriodsController < ApplicationController
  before_action :authenticate_user

  def index

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
  
  def edit
    @period = Period.find(params[:id])
  end
  
  def update
    @period = Period.find(params[:id])
    
    if @period.update(period_params)
      flash[:success] = "Période modifiée"
      redirect_to kath_root_path

    else
      flash[:danger] = "Impossible de modifier la période"
      render :new

    end
  end

  def destroy
    @period = Period.find(params[:id])
    if @period.destroy
      flash[:info] = "Période supprimée"
      redirect_to kath_root_path
    else
      flash[:danger] = "Impossible de supprimer cette période"
      render :edit
    end

      
  end

  private

  def period_params
    params.require(:period).permit(:title)
  end


end
