class Airport < ApplicationRecord
	has_many :departing_flights, :foreign_key => :from, :class_name => "Flight" 
	has_many :arriving_flights, :foreign_key => :to, :class_name => "Flight"
end
