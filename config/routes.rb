Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  resources :refeicos, :users

  root "home#index"

  get "home/about"

  get "home/FAQ"

  get "home/Services"

  get "home/Payment"

  get "home/Terms"

  get "home/Privacy"

  get    'sign_in'   => 'sessions#new'

  post   'sign_in'   => 'sessions#create'

  delete 'sign_out'  => 'sessions#destroy'

end
