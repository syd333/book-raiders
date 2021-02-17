Rails.application.routes.draw do
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :books do 
    resources :reviews, shallow: true 
  end
  resources :reviews
  resources :books
  resources :genres
  resources :authors
  resources :users
  resources :sessions 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
