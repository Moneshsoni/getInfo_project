Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "details#index"
  resources :details
end
