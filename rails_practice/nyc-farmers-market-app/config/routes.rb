Rails.application.routes.draw do
  get '/markets' => 'markets#index'
  get '/waters' => 'waters#index'
  get '/gardens' => 'gardens#index'
end
