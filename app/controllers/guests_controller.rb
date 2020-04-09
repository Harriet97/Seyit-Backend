class GuestsController < ApplicationController
        def show
            guest = Guest.find(params[:id])
            render json: guest
        end
    
        def index
            guests = Guest.all
            render json: guests
        end
    
        def sign_in
            guest = Guest.find_by(email: params[:email])
            if guest && guest.authenticate(params[:password])
              render json: { id: guest.id, email: guest.email, token: generate_token(id: guest.id), favourite_properties: guest.favourite_properties, bookings: guest.bookings }
            else
              render json: { error: "Username or Password is invalid "}
            end
          end
    
          def validate
            guest = get_guest
            if guest
              render json: { id: guest.id, email: guest.email, token: generate_token(id: guest.id), favourite_properties: guest.favourite_properties, bookings: guest.bookings}
            else
              render json: { error: "You are not authorized" }, status: :unprocessable_entity
            end
          end
    
          def create
            guest = Guest.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password])
            
            if guest.save
              render json: {username: guest.username, token: generate_token(id: guest.id), favourites: guest.favourites, bookings: guest.bookings}
            else
              puts "failed"
              render json: guest.errors, status: :unprocessable_entity
            end
          end

          def favourites 
            guest = get_guest
            render json: guest.guest_favourites
          end

          def bookings 
            guest = get_guest
            render json: guest.bookings
          end
    
    end
    
