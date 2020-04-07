class Property < ApplicationRecord
  belongs_to :host
  has_many :bookings
  has_many :guest_favourites
end
