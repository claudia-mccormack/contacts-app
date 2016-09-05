class CharactersController < ApplicationController

  def index
    api_characters = Unirest.get("http://localhost:3000/api/v1/characters.json").body
    @characters = []
    api_characters.each do |api_character|
      @characters << Character.new(api_character)
    end
    return @characters
  end

  def new
  end

  def create
    @character = Unirest.post("http://localhost:3000/api/v1/characters",
    headers:{"Accept" => "application/json"},
    parameters:{name: params[:name],
    house: params[:house],
    city: params[:city]}
    ).body
    redirect_to "/characters/#{@character["id"]}"
  end

  def show
    character_hash = Unirest.get("http://localhost:3000/api/v1/characters/#{params[:id]}.json").body
    @character = Character.new(character_hash)
    render "show.html.erb"
  end

  def edit
    @character = Unirest.get("http://localhost:3000/api/v1/characters/#{params[:id]}.json").body
  end

  def update
    @character = Unirest.patch("http://localhost:3000/api/v1/characters/#{params[:id]}.json",
    headers:{"Accept" => "application/json"},
    parameters:{name: params[:name],
    house: params[:house],
    city: params[:city]}
    ).body
    redirect_to "/characters/#{@character["id"]}"
  end

end
