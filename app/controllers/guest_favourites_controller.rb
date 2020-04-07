class GuestFavouritesController < ApplicationController
    def show
        guest_favourite = GuestFavourite.find(params[:id])
        render json: guest_favourite
    end

    def index
        guest_favourites = GuestFavourite.all
        render json: guest_favourites
    end

    def new
        @guest_favourite = GuestFavourite.new
        @user = User.find(current_user.id)
    end
  
    def create
        @guest = 
        @property =
        @guest_favourite = GuestFavourite.create(guest_id: @guest.id, property_id: @property.id )
    end
end
