class MarketsController < ApplicationController
  def index
    @markets = Unirest.get('https://data.cityofnewyork.us/resource/cdpt-29ur.json').body
  end
end
