class GuestFavouritesController < ApplicationController
    def show
        guest_favourite = GuestFavourite.find(params[:id])
        render json: guest_favourite
    end

    def index
        favourites = GuestFavourite.all
        render json: favourites
    end

    def new
        @guest_favourite = GuestFavourite.new
        @user = User.find(current_user.id)
    end
  
    def create
        @guest = params[:guest_id]
        @property = params[:property_id]
        @guest_favourite = GuestFavourite.create(guest_id: @guest, property_id: @property)
    end

    def unfavourite
        property = params[:property_id]
        guest = params[:guest_id]
        @favourite = GuestFavourite.find_by({guest_id: guest, property_id: property})
        @favourite.destroy
    end
 
end
