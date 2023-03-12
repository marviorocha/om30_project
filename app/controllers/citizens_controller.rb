class CitizensController < ApplicationController

  before_action :set_citizen, only: %i[address]
  def index

  end

  def cards
    @citizens = Citizen.all
    render partial: 'citizens/cards', locals: {citizen: @citizens}
  end

  def address
     @address = @citizen.address
     render json: @address
  end

  def new
    @citizen = Citizen.new
  end
  def create
    @citizen = Citizen.new(citizen_params)

    if @citizen.save
        render turbo_stream.update("add_citizen", partial: "citizens/new", locals: { person: @citizen })
        format.html { redirect_to @citizen, notice: "Cidadão foi criado com sucesso!" }
    else
        render turbo_stream.replace("add_citizen", partial: "citizens/form", locals: { person: @person })
        format.html { render :new, status: :unprocessable_entity }
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
                                     :status )
  end



end
