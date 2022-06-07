# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.delete_all
Flight.delete_all

air_list = Airport.create([{ airport_code: "NYC" }, { airport_code: "WDC" }])

flights = Flight.create([
  {departure_airport_id: air_list.first.id, arrival_airport_id: air_list.last.id, flight_duration: 3, flight_day: "2022-06-26 09:30:00"},
  {departure_airport_id: air_list.last.id, arrival_airport_id: air_list.first.id, flight_duration: 3, flight_day: "2022-06-26 01:30:00"},
  {departure_airport_id: air_list.last.id, arrival_airport_id: air_list.first.id, flight_duration: 3, flight_day: "2022-06-27 10:30:00"},
  {departure_airport_id: air_list.first.id, arrival_airport_id: air_list.last.id, flight_duration: 3, flight_day: "2022-06-27 09:30:00"}
])