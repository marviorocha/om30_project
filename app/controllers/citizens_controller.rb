class CitizensController < ApplicationController

  before_action :set_citizen, only: %i[address]

  def index

  end

  def cards
    @citizens = Citizen.status
    render partial: 'citizens/cards', locals: { citizen: @citizens }
  end

  def address
    @address = @citizen.address
    render json: @address
  end

  def new
    @citizen = Citizen.new
    @address = @citizen.build_address

  end

  def create
    citizen = CitizenCreator.call(citizen_params)

    if citizen.save
    redirect_to citizens_path, notice: 'Cadastrado com sucesso!'
    end

  end

  private

  def set_citizen
    @citizen = Citizen.find(params[:id])
  end

  def citizen_params

    params.require(:citizen).permit(:full_name,
                                    :email,
                                    :cpf,
                                    :cns,
                                    :date_of_birth,
                                    :phone,
                                    :picture,
                                    :status,
                                    address_attributes:
                                      [:zipcode,
                                       :street,
                                       :complement,
                                       :district,
                                       :city,
                                       :state,
                                       :ibge_code])

  end

end
