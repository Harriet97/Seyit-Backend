class HostsController < ApplicationController
    def show
        host = Host.find(params[:id])
        render json: host
    end

    def index
        hosts = Host.all
        render json: hosts
    end

    def sign_in
        host = Host.find_by(email: params[:email])
        if host && host.authenticate(params[:password])
          render json: { email: host.email, token: generate_token(id: host.id), properties: host.properties, bookings: host.bookings }
        else
          render json: { error: "Email or Password is invalid "}
        end
      end

      def validate
        host = get_host
        if host
          render json: { id: host.id, email: host.email, token: generate_token(id: host.id), bookings: host.bookings}
        else
          render json: { error: "You are not authorized" }, status: :unprocessable_entity
        end
      end

      def create
        host = Host.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password])
        
        if host.save
          render json: {username: host.username, token: generate_token(id: host.id), properties: host.properties, bookings: host.bookings}
        else
          puts "failed"
          render json: host.errors, status: :unprocessable_entity
        end
      end

      def bookings 
        host = get_host
        render json: host.bookings
      end

      def properties 
        host = get_host
        render json: host.properties
      end


end
