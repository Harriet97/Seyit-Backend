class Host < ApplicationRecord
    has_many :properties
    has_many :bookings, through: :properties
    has_secure_password
end
