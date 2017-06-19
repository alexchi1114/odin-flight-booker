class FlightsController < ApplicationController
	def index
		@flight_options = Airport.all.map{|u| [u.code, u.id]}
		@passenger_options = [1,2,3,4]
		@date_options = Flight.possible_dates

		@matched_flights = Flight.flight_search(params[:to_id], params[:from_id], params[:date])
	end

	private 

		def flight_params
			params.require(:flight).permit(:from_id, :to_id, :passengers, :date)
		end
end
