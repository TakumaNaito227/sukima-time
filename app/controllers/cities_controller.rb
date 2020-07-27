class CitiesController < ApplicationController

  def show
    @city = Message.find_by(city_id: params[:id])
  end
end

