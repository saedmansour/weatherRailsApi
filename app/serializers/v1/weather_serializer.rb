class V1::WeatherSerializer < ActiveModel::Serializer
  attributes :temparature, :description, :wind_speed

  def temparature
    object["main"]["temp"]
  end

  def description
    object["weather"].first["description"]
  end

  def wind_speed
    object["wind"]["speed"]
  end

end
