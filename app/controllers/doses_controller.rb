class DosesController < ApplicationController
  def show
    @dose = Dose.find(params[:cocktail_id])
  end

  def new
    @dose = Dose.new
  end

  def create

    cocktail = Cocktail.find(params["cocktail_id"])
    @dose = Dose.new(dose_params)
    @dose.cocktail = cocktail

    if @dose.save
      redirect_to cocktail_path(cocktail)
    else
      redirect_to cocktail_path(cocktail)
    end
  end

  def delete
    @dose = Dose.find(params[:cocktail_id])
    @dose.destroy
    redirect_to cocktail_path
  end

  def dose_params
   params.require(:dose).permit(:description, :ingredient_id)

  end
end
