class Weather
	def show
    response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php?location=Miami",
     headers:{
    "X-Mashape-Key" => "MKPZswVpF1mshulqTqOAw80NF56np1W3APIjsnIyE6pRErnjmI",
    "Accept" => "application/json"
  }

  	response.body.first
  end
 end
