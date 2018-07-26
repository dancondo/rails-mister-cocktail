class DosesController < ApplicationController
 before_action :set_dose, only: [:edit, :destroy]

  def index
  end

  def new
    @dose = Dose.new(dose_params)
  end

  def edit
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
  end

  def destroy
    @dose.destroy
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient, :ingredient_id, :cocktail_id)
  end
end
