class CitiesController < ApplicationController

  def show
    @yokohama = Message.where(city_id: 8)
  end
end

