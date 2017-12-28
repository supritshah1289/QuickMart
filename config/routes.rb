Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #categories routes
  root 'categories#index'
  get '/categories/:id' => 'categories#show', as: :category
  get '/categories_new' => 'categories#new'
  post'/categories' => 'categories#create'
  delete '/categories/:id' => 'categories#destroy'

  #item routes
  get '/items/:id' => 'items#show', as: :item
  get '/items_new' => 'items#new'
  post '/items' => 'items#create'
  get '/items/:id/edit' => 'items#edit', as: :edit_item
  patch '/items/:id' => 'items#update'
  delete '/items/:id' => 'items#destroy'


  #user sign up routes
  get '/signup' => 'users#new'
  resources :users

  #session sign in
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
