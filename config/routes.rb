Rails.application.routes.draw do
  resources :guest_favourites
  resources :bookings
  resources :properties
  get '/properties/:id/bookings', to: 'properties#bookings'
  resources :guests
  resources :hosts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
