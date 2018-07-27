class DosesController < ApplicationController
  before_action :set_dose, only: [:edit, :destroy]
  before_action :set_cocktail, only: [:new, :create]

  def index
  end

  def new
    @dose = Dose.new
  end

  def edit
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient, :ingredient_id, :cocktail_id)
  end
end
