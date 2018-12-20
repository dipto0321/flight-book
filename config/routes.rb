Rails.application.routes.draw do
  root 'flights#index'

  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  resources :flights, only: :index
  resources :bookings

end
