class BookingsController < ApplicationController
    def show
        booking = Booking.find(params[:id])
        render json: booking
    end

    def index
        bookings = Booking.all
        render json: bookings
    end

    def new
        @booking = Booking.new
        @user = User.find(current_user.id)
    end
  
    def create
        @guest = 
        @property =
        @startDate =
        @endDate =
        @booking = Booking.create(guest_id: @guest.id, property_id: @property.id , startDate: , endDate: , confirmed: false)
    end
end
