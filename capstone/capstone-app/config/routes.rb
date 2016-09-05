Rails.application.routes.draw do
  devise_for :users

    get '/' => 'books#index'
    get '/books/new' => 'books#new'
    post '/books' => 'books#create'
    get '/books/:id' => 'books#show'
    get '/books/:id/edit' => 'books#edit'
    patch '/books/:id' => 'books#update'
    delete '/books/:id' => 'books#destroy'

    get '/favorites' => 'favorites#index'
    post '/favorites' => 'favorites#create'
    patch '/favorites' => 'favorites#finished'
    delete '/favorites' => 'favorites#destroy'

end
