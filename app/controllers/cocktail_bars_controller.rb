class CocktailBarsController < ApplicationController
  def index
    @bars = CocktailBar.all
  end
end
