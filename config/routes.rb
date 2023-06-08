Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sessions#index"

  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"

  post "login", to: "sessions#create"
  get "login", to: "sessions#new"
  delete "logout", to: "sessions#destroy"

  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token

  resources :users do
    resources :pokemons
  end
end
