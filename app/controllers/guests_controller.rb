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
            guest = Guest.find_by(username: params[:username])
            if guest && guest.authenticate(params[:password])
              render json: { username: guest.username, token: generate_token(id: guest.id), favourites: guest.favourites, bookings: guest.bookings }
            else
              render json: { error: "Username or Password is invalid "}
            end
          end
    
          def validate
            if get_guest
              render json: { username: get_guest.username, token: generate_token(id: get_guest.id), favourites: guest.favourites, bookings: guest.bookingss}
            else
              render json: { error: "You are not authorized" }
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
    
    end
    
