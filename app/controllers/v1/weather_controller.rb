require 'weather_service'

class V1::WeatherController < ApplicationController

  def initialize
    super
    @weatherService = WeatherService.new
  end

  def get_by_city
    weather_result = @weatherService.get_city_and_country_weather(params[:city], params[:country])
    render json: weather_result, serializer: V1::WeatherSerializer
  end

end
