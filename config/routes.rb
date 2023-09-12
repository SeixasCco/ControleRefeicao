Rails.application.routes.draw do
  resources :refeicos
  root "home#index"

  get "home/about"

  get "home/FAQ"
end
