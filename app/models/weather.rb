class Weather
  def self.show(city)
     get_weather(city)
  end

  private

  def self.get_weather(city)
     Unirest.timeout(5)
     response = Unirest.get(
	  weather_url(city), 
	  headers: default_headers
     )
     response.body.first
  end 

  def self.weather_url(city)
      "https://george-vustrey-weather.p.mashape.com/api.php?location=#{city}"
  end

  def self.default_headers
     {
      "X-Mashape-Key" => "MKPZswVpF1mshulqTqOAw80NF56np1W3APIjsnIyE6pRErnjmI",
      "Accept" => "application/json"
     }
  end
end
