class AddCoordinatesToCocktailBar < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktail_bars, :latitude, :float
    add_column :cocktail_bars, :longitude, :float
  end
end
