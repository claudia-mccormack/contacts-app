class WatersController < ApplicationController
  def index
    @waters = Unirest.get('https://data.cityofnewyork.us/resource/waf7-5gvc.json').body
  end
end
