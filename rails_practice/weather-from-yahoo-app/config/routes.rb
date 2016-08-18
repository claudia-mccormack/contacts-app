Rails.application.routes.draw do
  get '/weathers' => 'weathers#index'
  get '/blah' => 'weathers#blah'
end
