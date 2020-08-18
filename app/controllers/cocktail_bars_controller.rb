class CocktailBarsController < ApplicationController
  def index
    @bars = CocktailBar.geocoded

    @markers = @bars.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bar: bar })
      }
    end
  end

  def show
    @bar = CocktailBar.geocoded.find(params[:id])
    @markers =
      [{
        lat: @bar.latitude,
        lng: @bar.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bar: @bar })
      }]
  end
end
