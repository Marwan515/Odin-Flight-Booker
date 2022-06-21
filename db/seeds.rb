# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.delete_all
Flight.delete_all

air_list = Airport.create([{ airport_code: "NYC" }, { airport_code: "WDC" }, { airport_code: "LAX" }, { airport_code: "LAS" }])
b = []

air_list.each do |x|
  b << x.id
end

flights = Flight.create([
  {departure_airport_id: b[0], arrival_airport_id: b[1], flight_duration: 3, flight_day: "2022-09-30 09:30:00"},
  {departure_airport_id: b[0], arrival_airport_id: b[2], flight_duration: 3, flight_day: "2022-09-30 10:30:00"},
  {departure_airport_id: b[0], arrival_airport_id: b[3], flight_duration: 3, flight_day: "2022-09-30 11:30:00"},
  {departure_airport_id: b[1], arrival_airport_id: b[0], flight_duration: 3, flight_day: "2022-09-30 09:30:00"},
  {departure_airport_id: b[1], arrival_airport_id: b[2], flight_duration: 3, flight_day: "2022-09-30 10:30:00"},
  {departure_airport_id: b[1], arrival_airport_id: b[3], flight_duration: 3, flight_day: "2022-09-30 11:30:00"},
  {departure_airport_id: b[2], arrival_airport_id: b[0], flight_duration: 3, flight_day: "2022-09-30 09:30:00"},
  {departure_airport_id: b[2], arrival_airport_id: b[1], flight_duration: 3, flight_day: "2022-09-30 10:30:00"},
  {departure_airport_id: b[2], arrival_airport_id: b[3], flight_duration: 3, flight_day: "2022-09-30 11:30:00"},
  {departure_airport_id: b[3], arrival_airport_id: b[0], flight_duration: 3, flight_day: "2022-09-30 09:30:00"},
  {departure_airport_id: b[3], arrival_airport_id: b[1], flight_duration: 3, flight_day: "2022-09-30 10:30:00"},
  {departure_airport_id: b[3], arrival_airport_id: b[2], flight_duration: 3, flight_day: "2022-09-30 11:30:00"}
])