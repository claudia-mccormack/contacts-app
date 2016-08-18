Rails.application.routes.draw do
  namespace :v1 do
  # get '/employees' => 'employees#index'
    get '/employees/:id' => 'employees#show'
    post '/employees' => 'employees#create'
  end

end
