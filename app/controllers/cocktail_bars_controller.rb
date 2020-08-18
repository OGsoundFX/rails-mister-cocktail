class CocktailBarsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "city ILIKE :query OR address ILIKE :query"
      @bars = CocktailBar.geocoded.where(sql_query, query: "%#{params[:query]}%")
    else
      @bars = CocktailBar.geocoded
    end

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
