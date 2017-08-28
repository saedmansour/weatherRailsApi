require 'open_weather'

class WeatherService

  def get_city_and_country_weather(city, country_code)
    city += "," + country_code unless country_code.empty? || country_code.nil?
    result = OpenWeather::Current.city(city, OPTIONS)
    openWeatherNoResult?(result) ? nil : result
  end

  private

  OPTIONS = { units: "metric", APPID: ENV['OPEN_WEATHER_API_KEY'] }

  def openWeatherNoResult?(api_return_data)
    api_return_data == {"cod"=>"404", "message"=>"city not found"}
  end

end
