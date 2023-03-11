class CitizensController < ApplicationController

  before_action :set_citizen, only: %i[update]
  def index
    @citizens = Citizen.all
  end

  def new

  end
  def create
    @citizen = Citizen.new(citizen_params)
    if @citizens.save
      redirect_to turbo_stream_from(citizen_params(@citizens))
    else
      render turbo_stream: turbo_stream.replace(:add_people, partial: 'citizens/form', locals: { citizen: @citizen})
    end
  end

  private

  def set_citizen
    @citizen = Citizen.find(params[:id])
  end

  def citizen_params

    params.require(:citizens).permit(:full_name,
                                     :email,
                                     :cpf,
                                     :cns,
                                     :date_of_birth,
                                     :phone,
                                     :status )
  end



end
