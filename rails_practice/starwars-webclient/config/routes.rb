Rails.application.routes.draw do
  get '/star_wars' => 'star_wars#index'
  get '/star_wars/:id' => 'star_wars#show'
end
