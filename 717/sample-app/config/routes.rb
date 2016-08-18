Rails.application.routes.draw do
  get '/crouching_tiger' => 'pages#crouching_tiger'
  get '/tiger_info' => 'pages#tiger_info'
  get '/contact' => 'pages#contact'
  get '/time' => 'pages#time'
end
