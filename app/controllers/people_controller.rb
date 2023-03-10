class PeopleController < ApplicationController

  before_action :people_set, only: %i[update]
  def index
    @people = People.all

    respond_to  do |format|
      format.html
    end

  end

  def new
    @people = People.new
  end
  def create
    @people = People.new()
  end

  private

  def people_set

  end

  def people_params
    params.require(:people).permit(:full_name,
                                   :email,
                                   :cpf,
                                   :cns,
                                   :date_of_birth,
                                   :phone,
                                   :status )
  end



end
