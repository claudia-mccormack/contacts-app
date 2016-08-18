class GardensController < ApplicationController
  def index
    @gardens = Unirest.get('https://data.cityofnewyork.us/resource/yes4-7zbb.json').body
  end
end
