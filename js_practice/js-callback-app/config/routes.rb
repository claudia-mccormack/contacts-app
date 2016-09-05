Rails.application.routes.draw do
  get '/callbacks' => 'pages#callbacks'
  get '/index' => 'pages#index'
end
