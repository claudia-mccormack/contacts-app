class WeathersController < ApplicationController
  def index
    @weather = Weather.lookup(2467861, Weather::Units::FAHRENHEIT)
    @forecast = @weather.forecasts[0..4]
    @image = @weather.image.url
    render 'index.html.erb'
  end

  def blah
    @weather = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22' + params[:city] + '%2C%20' + params[:state] + '%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body
    @forecast = @weather["query"]["results"]["channel"]["item"]["forecast"]
    @condition = @weather["query"]["results"]["channel"]["item"]["condition"]
    @place = @weather["query"]["results"]["channel"]["item"]["location"]
    render 'index.html.erb'
  end

end
