class PropertiesController < ApplicationController
    def show
        property = Property.find(params[:id])
        render json: property, include: [:bookings, :guest_favourites]
    end

    def bookings
        property = Property.find(params[:id])
        render json: property.bookings
    end

    def index
        properties = Property.all
        render json: properties, include: [:guest_favourites]
    end


end