class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passenger_count].to_i

    @flights = Flight.all
    @flights_with_codes = @flights.map { |flight| [flight.code, flight.id] }
    @passenger = Passenger.all
  end

  def create
    @booking = Booking.find(booking_params)
    
    if @booking.save
      # Handle successful creation
      redirect_to new_booking_path, notice: 'Booking was successfully created'
    else
      # Handle creation failure
      render :new, status: :unprocessable_entity  
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_id, :passenger_count)
  end
end
