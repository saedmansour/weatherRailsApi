class V1::WeatherController < ApplicationController

  def get_by_city
    weather_result = WeatherService.get_city_and_country_weather(params[:city], params[:country])
    if weather_result.nil?
         render :json => {:error => "not found"}.to_json, :status => 404
        return
    end
    render json: weather_result, serializer: V1::WeatherSerializer
  end

end
