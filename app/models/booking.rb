class Booking < ApplicationRecord

 belongs_to :room
 belongs_to :user 

 validates :end, :start, :purpose , presence: true
end
