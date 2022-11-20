class Booking < ApplicationRecord

 belongs_to :room

 validates :end, :start, :purpose , presence: true
end
