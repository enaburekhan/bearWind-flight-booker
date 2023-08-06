class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all

    if params[:departure_airport_id].present?
      @flights = @flights.departure_airport(params[:departure_airport_id])
    end

    if params[:arrival_airport_id].present?
      @flights = @flights.arrival_airport(params[:arrival_airport_id])
    end

    if params[:passenger_count].present?
      @flights = @flights.passenger_count(params[:passenger_count].to_i)
    end

    if params[:flight_date].present?
      date = Date.parse(params[:flight_date].to_s)
      @flights = @flights.flight_date(date)
    end
    
  end
end
