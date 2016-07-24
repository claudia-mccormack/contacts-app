Rails.application.routes.draw do
  get '/fortune' => 'pages#fortune'
  get '/lottery' => 'pages#lottery'
  get '/counter' => 'pages#counter'
  get '/bottles_of_beer' => 'pages#bottles_of_beer'
end
