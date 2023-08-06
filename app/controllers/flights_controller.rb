class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all

    if params[:departure_airport_id].present?
      @flights = @flights.where(departure_airport_id: params[:departure_airport_id])
    end

    if params[:arrival_airport_id].present?
      @flights = @flights.where(arrival_airport_id: params[:arrival_airport_id])
    end

    if params[:passenger_count].present?
      @flights = @flights.where(passenger_count: params[:passenger_count].to_i)
    end

    if params[:flight_date].present?
      date = Date.parse(params[:flight_date].to_s)
      @flights = @flights.where("DATE(start_datetime) = ?", date)
    end
    
  end
end
