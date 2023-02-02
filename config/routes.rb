Rails.application.routes.draw do
  resources :places do
    resources :place_ratings, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "places#index"
end
