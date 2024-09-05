class PlacesController < ApplicationController
  def index
    @places = Place.all

    if params[:query].present?
      @places = @places.search_by(params[:query])
    end

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: "popup", locals: {place: place}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end
end
