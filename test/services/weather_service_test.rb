require_relative '../test_helper'

class WeatherServiceTest < ActiveSupport::TestCase
  test 'with city' do
    x = WeatherService.new
    result = x.get_city_and_country_weather("berlin", "")
    assert result["cod"] == 200
    assert result["weather"]
    assert result["main"]["temp"]
  end

  test 'no city' do
    x = WeatherService.new
    result = x.get_city_and_country_weather("", "")
    assert result == nil
  end
end
