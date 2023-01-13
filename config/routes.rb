Rails.application.routes.draw do
  resources :workers
  resources :locations

  get '/games' => 'games#index'
  post '/games' => 'games#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
