class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    @ingredients = Ingredient.all
  end

  def create
    # byebug
    @cocktail = Cocktail.create(c_params)
    # ing_ids = params["cocktail"]["ingredient_ids"].reject{ |x| x.empty?}
    @cocktail.ingredients = Ingredient.find(ing_ids)
    redirect_to cocktail_path(@cocktail)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
    @ingredients = Ingredient.all
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(c_params)
    # ing_ids = params["cocktail"]["ingredient_ids"].reject{ |x| x.empty?}
    @cocktail.ingredients = Ingredient.find(ing_ids)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
 end

  private

  def c_params
    params.require(:cocktail).permit(:name)
  end

  def ing_ids
    params["cocktail"]["ingredient_ids"].reject{ |x| x.empty?}
  end

end
