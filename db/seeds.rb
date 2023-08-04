# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(code: 'IKJ')
Airport.create(code: 'BN')
Airport.create(code: 'CAL')
Airport.create(code: 'ENU')
Airport.create(code: 'IMO')
Airport.create(code: 'KN')
Airport.create(code: 'ABJ')
Airport.create(code: 'KDU')
Airport.create(code: 'PH')
Airport.create(code: 'JOS')


Flight.create(
  departure_airport: Airport.find_by(code: 'IKJ'),
  arrival_airport: Airport.find_by(code: 'CAL'),
  start_datetime: Time.now,
  flight_duration: 120    
)

Flight.create(
  departure_airport: Airport.find_by(code: 'BN'),
  arrival_airport: Airport.find_by(code: 'ABJ'),
  start_datetime: Time.now + 1.day,
  flight_duration: 90    
)