class Kath::AvailabilitiesController < ApplicationController
  before_action :authenticate_user

  def index
  end

  def new
    @availability = Availability.new
  end
  
  def create
    @availability = Availability.new(availability_params)
    @availability.available = true

    if @availability.save
      flash[:success] = "Semaine créée"
      redirect_to kath_root_path
    else
      flash[:danger] = "Impossible de créer la semaine"
      render new_kath_availability_path
    end
  end
  
  def edit
    @availability = Availability.find(params[:id])
  end
  
  def update
    @availability = Availability.find(params[:id])
    
    if @availability.update(availability_params)
      flash[:success] = "Période modifiée"
      redirect_to kath_root_path

    else
      flash[:danger] = "Impossible de modifier la période"
      render :new

    end
  end

  def destroy
    @availability = Availability.find(params[:id])
    if @availability.destroy
      flash[:info] = "Période supprimée"
      redirect_to kath_root_path
    else
      flash[:danger] = "Impossible de supprimer cette période"
      render :edit
    end
  end

  def toggle_availability_state
    @availability = Availability.find(params[:id])
    if @availability.toggle(:available).save
      respond_to do |format|
        format.html { redirect_to kath_root_path }
        format.js { }
      end
    else
      flash[:danger] = "Impossible de réserver cette période"
      redirect_to kath_root_path
    end
  end

  private

  def availability_params
    params.require(:availability).permit(:date, :price, :available, :period_id)
  end
end
