class PlacesController < ApplicationController
  def index
    @places = Place.geocoded
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
