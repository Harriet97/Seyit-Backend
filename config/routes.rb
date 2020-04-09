Rails.application.routes.draw do
  get '/hosts/validate', to: 'hosts#validate'
  get '/guests/validate', to: 'guests#validate'
  post '/hosts/sign-in', to: 'hosts#sign_in'
  post '/guests/sign-in', to: 'guests#sign_in'

  get '/properties/:id/bookings', to: 'properties#bookings'

  get '/guests/bookings', to: 'guests#bookings'
  get '/guests/favourites', to: 'guests#favourites'
  get '/hosts/bookings', to: 'hosts#bookings'
  get '/hosts/properties', to: 'hosts#properties'
  
  resources :guest_favourites
  resources :bookings
  resources :properties
  resources :guests
  resources :hosts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
