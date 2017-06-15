class Flight < ApplicationRecord
	belongs_to :from_airport, :foreign_key => :from, :class_name => "Airport"
	belongs_to :to_airport, :foreign_key => :to, :class_name => "Airport"
end