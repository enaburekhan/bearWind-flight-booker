class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'
  
  validates :departure_airport, :arrival_airport, :start_datetime, :flight_duration, presence: true

  scope :departure_airport, ->(airport_id) { where(departure_airport_id: airport_id) }
  scope :arrival_airport, ->(airport_id) { where(arrival_airport_id: airport_id) }
  scope :passenger_count, ->(count) { where(passenger_count: count) }
  scope :flight_date, ->(date) { where("DATE(start_datetime) = ?", date) }
end
