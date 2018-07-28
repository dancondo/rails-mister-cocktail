class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def home
  end

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.doses.build
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail
    else
      render :edit
    end
  end

  def show
    @dose = Dose.new
    @review = Review.new
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail =Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo , doses_attributes: [:description, :cocktail_id, :ingredient_id],
                                     reviews_attributes: [:content, :rating, :cocktail_id])
  end
end
