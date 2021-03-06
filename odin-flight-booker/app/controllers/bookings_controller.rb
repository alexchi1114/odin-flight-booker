class BookingsController < ApplicationController
	def new
		@flight = Flight.find(params[:flight_id])
		@tickets = params[:tickets]
		@booking = @flight.bookings.build
		build_passengers(params[:tickets], @booking)
	end

	def create
		@booking = Booking.new(booking_params)
		
		if @booking.save
			@booking.passengers.each do |passenger|
				PassengerMailer.welcome_email(passenger).deliver_now
			end
			redirect_to @booking
		else
			@flight = Flight.find(params[:flight_id])
			flash[:danger] = @booking.save!
			render 'new'
		end

	end

	def show
		@booking = Booking.find(params[:id])
	end

	private

	def build_passengers(passengers, booking)
  		if passengers.blank?
  			booking.passengers.build
  		else
  			passengers.to_i.times { @booking.passengers.build }
  		end
  	end

    def booking_params
      	params.require(:booking).permit(:flight_id, 
  		                              :passengers_attributes => [:name, :email])
    end
end
