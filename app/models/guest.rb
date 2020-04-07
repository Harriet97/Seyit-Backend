class Guest < ApplicationRecord
    has_many :bookings
    has_many :properties, through: :bookings
    has_many :guest_favourites
    has_many :properties, through: :guest_favourites
    has_secure_password
end
