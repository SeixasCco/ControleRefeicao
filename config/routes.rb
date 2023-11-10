Rails.application.routes.draw do

  resources :refeicos, :users

  root "home#index"

  get 'sessions/new'

  get 'users/new'

  get "home/about"

  get "home/FAQ"

  get "home/Services"

  get "home/Payment"

  get "home/Terms"

  get "home/Privacy"

  get    'sign_in'   => 'sessions#new'

  post   'sign_in'   => 'sessions#create'

  get 'sign_out', to: 'sessions#destroy', as: :sign_out

  get 'dashboard', to: 'dashboards#show'

  get 'bmi_calculator', to: 'dashboards#bmi_calculator'

  get 'calculate_bmi', to: 'dashboards#calculate_bmi'

end
