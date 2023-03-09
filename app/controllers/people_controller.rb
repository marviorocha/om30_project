class PeopleController < ApplicationController
  def index
    @people = People.all

    respond_to  do |format|
      format.html
    end

  end

  def

end
