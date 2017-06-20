class Flight < ApplicationRecord
	belongs_to :from_airport, :foreign_key => :from, :class_name => "Airport"
	belongs_to :to_airport, :foreign_key => :to, :class_name => "Airport"
	has_many :bookings
	

	def self.possible_dates
		all_dates = Flight.all.map{|flight| flight.departure_time.to_date}.uniq
		all_dates.select{|date| Time.now<=date}
	end

	def self.flight_search(to_id, from_id, date)
		Flight.where(to: to_id).where(from: from_id).where(date: date)
	end

end
