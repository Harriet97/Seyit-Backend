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
        host = Host.find_by(username: params[:username])
        if host && host.authenticate(params[:password])
          render json: { username: host.username, token: generate_token(id: host.id), properties: host.properties, bookings: host.bookings }
        else
          render json: { error: "Username or Password is invalid "}
        end
      end

      def validate
        if get_host
          render json: { username: get_host.username, token: generate_token(id: get_host.id), properties: host.properties, bookings: host.bookings}
        else
          render json: { error: "You are not authorized" }
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

end
