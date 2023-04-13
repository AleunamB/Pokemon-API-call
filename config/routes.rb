Rails.application.routes.draw do
  resources :pokemon

  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  get '/', to: 'pokemon#show'
  get "pokemon/:id", to: "pokemon#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
