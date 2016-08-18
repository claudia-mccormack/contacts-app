class StarWarsController < ApplicationController
  def index
    @starwars = Unirest.get('http://localhost:3000/api/v2/starwars.json').body
  end

  def show
    @starwar = Unirest.get('http://localhost:3000/api/v2/starwars/38.json').body
  end

end
