class AddCityToCocktailBars < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktail_bars, :city, :string
  end
end
