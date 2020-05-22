class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @kind = %w(dose twist pinch cl leave slice oz unity gram).sort

    # @quantity

    @ingredients = []
    categories = ["Alcohol", "Soda", "Juice", "Veggies", "Spice", "Other"]
    categories.each do |category|
      array = []
      category_array = []
      array << Ingredient.where(category: category)
      ingredient_name = []
      array[0].each do |ingredient|
        ingredient_name << ingredient.name
      end
      category_array << category
      category_array << ingredient_name
      @ingredients << category_array
    end
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.ingredient_id
      @dose.ingredient_id = Ingredient.where(name: dose_params['ingredient_id'])[0].id
    end
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      if params[:commit] == 'Add another Ingredient'
        redirect_to new_cocktail_dose_path(@cocktail)
      else
        redirect_to cocktail_path(@cocktail)
      end
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail_id)
  end

    private

  def dose_params
    params.require(:dose).permit(:comment, :ingredient_id, :quantity, :kind)
  end
end
