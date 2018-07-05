class User < ActiveRecord::Base
    has_many :listings, :foreign_key => "host_id"
    has_many :reservations, :foreign_key => "guest_id"
    has_many :reviews, :foreign_key => "guest_id"
    has_many :reservations, through: :listings #is this needed: :foreign_key => "host_id"

    def trips
        #will find upcoming trips/reservations for guests
        Reservation.where(guest_id: self.id)
    end
end
