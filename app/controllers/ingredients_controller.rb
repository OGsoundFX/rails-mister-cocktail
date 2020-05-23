class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    session[:return_to] ||= request.referer
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to session.delete(:return_to)
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :category)
  end
end
