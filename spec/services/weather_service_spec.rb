require 'rails_helper'

RSpec.describe WeatherService do
  context "WeatherService get city" do

    it 'Supply a valid city name as input' do
      result = WeatherService.get_city_and_country_weather("berlin", "")
      expect(result["cod"]).to eq(200)
      expect(result).to have_key("weather")
      expect(result["main"]).to have_key("temp")
    end

    it 'Supply with no city name' do
      result = WeatherService.get_city_and_country_weather("", "")
      expect(result).to be_nil
    end

  end
end
