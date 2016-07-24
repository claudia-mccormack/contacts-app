Rails.application.routes.draw do
  get '/recipes' => 'recipes#show'
end
