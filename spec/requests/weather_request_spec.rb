require 'rails_helper'

RSpec.describe 'Weather endpoint', :type => :request do
  it 'weather/city?city=cityName&country=CountryName returns weather data for city and country' do
    get "http://localhost:3000/v1/weather/city?city=Berlin"

    json_response = JSON.parse(response.body)

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(200)

    expect(json_response).to have_key('temparature')
    expect(json_response).to have_key('description')
    expect(json_response).to have_key('wind_speed')
  end
end
