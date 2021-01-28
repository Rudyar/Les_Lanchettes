class Kath::AvailabilitiesController < ApplicationController
  before_action :authenticate_user

  def index
    @availabilities = Availability.all
  end

  def new
    @availability = Availability.new
  end
  
  def create
    # ne pas oublier le period_id!
    @availability = aAailability.new(availability_params)

    if @availability.save
      flash[:success] = "Semaine créée"
      redirect_to kath_root_path
    else
      flash[:danger] = "Impossible de créer la semaine"
      render :new
    end
  end
  
  # def edit
  #   @availability = availability.find(params[:id])
  # end
  
  # def update
  #   @availability = availability.find(params[:id])
    
  #   if @availability.update(availability_params)
  #     flash[:success] = "Période modifiée"
  #     redirect_to kath_root_path

  #   else
  #     flash[:danger] = "Impossible de modifier la période"
  #     render :new

  #   end
  # end

  # def destroy
  #   @availability = availability.find(params[:id])
  #   if @availability.destroy
  #     flash[:info] = "Période supprimée"
  #     redirect_to kath_root_path
  #   else
  #     flash[:danger] = "Impossible de supprimer cette période"
  #     render :edit
  #   end

      
  # end

  private

  def availability_params
    params.require(:availability).permit(:date, :price, :available)
  end
end
