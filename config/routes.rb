Rails.application.routes.draw do
  root 'flights#index'
  # post '/flights/departure_airport_id'
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  resources :flights, only: :index

end
