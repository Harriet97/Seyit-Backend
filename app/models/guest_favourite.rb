class GuestFavourite < ApplicationRecord
  belongs_to :guest
  belongs_to :property
end
