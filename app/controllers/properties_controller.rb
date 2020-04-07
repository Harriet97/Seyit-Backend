class PropertiesController < ApplicationController
    def show
        property = Property.find(params[:id])
        render json: property, include: [:bookings]
    end

    def bookings
        property = Property.find(params[:id])
        render json: property.bookings
    end

    def index
        properties = Property.all
        render json: properties
    end

    # def create
    #     @property = Property.new(property_params)
    #     @property.save
    # end
    
    # private
    # def property_params
    #     params.require(:property).permit(:name, :host[:id], :price, :sleeps, :bedrooms, :bathrooms, :balcony, :washing_machine, :kettle, :coffee_machine, :fridge, :microwave, :kitchenware, :elevator, :living_room, :shower, :bathtub, :hairdryer, :iron, :hoover, :mop, :bedding, :tv, :wifi)
    # end
end