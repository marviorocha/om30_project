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

    @citizen = Citizen.new(citizen_params)

    if @citizen.save

      respond_to do |format|

        format.html { redirect_to '/', notice: "Cidadão foi criado com sucesso!" }

      end

    else

      format.html { render :new, status: :unprocessable_entity }
      raise StandardError.new("Error #{citizen.errors.full_messages.join(', ')}")
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
