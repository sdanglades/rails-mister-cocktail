class DosesController < ApplicationController
  def show
    @dose = Dose.find(params[:cocktail_id])
  end

  def new
    @dose = Dose.new
  end

  def create
    # raise
    # 1 get info fron params
    # 2 with the ids; find and get the object from the db
    # ingredients and cocktqils

    # 3 create the dose
    # dose.cocktail = something
    # dose.ingredient = something

    save


    @dose = Dose.new()
  end


  def delete
  end
end
