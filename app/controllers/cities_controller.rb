class CitiesController < ApplicationController

  def show
    @messages = Message.all.order('created_at DESC')
    @city = @messages.find_by(city_id: params[:id])
    binding.pry
    # @tokyo = Message.where(city_id: 2)
    # @nihonbashi = Message.where(city_id: 3)
    # @ginza = Message.where(city_id: 4)
    # @shinjuku = Message.where(city_id: 5)
    # @ikebukuro = Message.where(city_id: 6)
    # @shibuya = Message.where(city_id: 7)
    # @yokohama = Message.where(city_id: 8)
  end
end

