Rails.application.routes.draw do
  get '/welcomes' => 'welcomes#welcome'

  get '/portfolios' => 'portfolios#index'
end
