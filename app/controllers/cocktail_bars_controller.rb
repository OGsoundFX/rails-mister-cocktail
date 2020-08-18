class CocktailBarsController < ApplicationController
  def index
    @bars = CocktailBar.geocoded

    @markers = @bars.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude
      }
    end
  end
end
