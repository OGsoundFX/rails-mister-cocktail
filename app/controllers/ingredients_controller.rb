class IngredientsController < ApplicationController
  def new
    raise
    @ingredient = Ingredient.new
  end

  def create
    @cocktail = Cocktail.find(params[:id])
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :category)
  end
end
