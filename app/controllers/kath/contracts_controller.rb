class Kath::ContractsController < ApplicationController
  before_action :authenticate_user

  def index
    @contracts =Contract.all
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)

    if @contract.save
      flash[:success] = "Contrat créé"
      redirect_to kath_contract_path(@contract.id, format: :pdf)
    else
      flash[:danger] = "Impossible de créer le contract"
      render :new
    end
  end

  def show
    @contract = Contract.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'kath/contracts/show', 
              pdf: "contrat_" + @contract.last_name.upcase
      end
    end

  end

  private

  def contract_params
    params.require(:contract).permit(:first_name, :last_name, :email, :address, :phone_number, :duration, :price)
  end
end
