Rails.application.routes.draw do
  resources :guest_favourites
  resources :bookings
  resources :properties
  get '/properties/:id/bookings', to: 'properties#bookings'
  get '/guests/:id/bookings', to: 'guests#bookings'
  get '/guests/:id/favourites', to: 'guests#favourites'
  post '/guests/sign-in', to: 'guests#sign_in'
  get '/guests/validate', to: 'guests#validate'
  resources :guests
  resources :hosts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
