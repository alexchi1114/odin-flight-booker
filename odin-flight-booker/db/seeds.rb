# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{code: 'SFO'}, {code: 'JFK'}, {code: 'ROC'}, {code: 'LAX'}, {code: 'ORD'}])
flights = Flight.create([{departure_time: DateTime.strptime("2017-06-25 14:40", "%Y-%m-%d %H:%M"),duration: 2, to: 3, from: 4}, 
	{departure_time: DateTime.strptime("2017-06-25 07:35", "%Y-%m-%d %H:%M"),duration: 1, to: 4, from: 1, date: DateTime.strptime("2017-06-25 07:35", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-18 18:20", "%Y-%m-%d %H:%M"),duration: 6, to: 5, from: 3, date: DateTime.strptime("2017-06-18 18:20", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-19 18:20", "%Y-%m-%d %H:%M"),duration: 6, to: 5, from: 3, date: DateTime.strptime("2017-06-19 18:20", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-26 18:20", "%Y-%m-%d %H:%M"),duration: 6, to: 5, from: 3, date: DateTime.strptime("2017-06-26 18:20", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-26 06:40", "%Y-%m-%d %H:%M"),duration: 4, to: 2, from: 4, date: DateTime.strptime("2017-06-26 06:40", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-27 14:40", "%Y-%m-%d %H:%M"),duration: 3, to: 1, from: 2, date: DateTime.strptime("2017-06-27 14:40", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-28 09:20", "%Y-%m-%d %H:%M"),duration: 5, to: 5, from: 4, date: DateTime.strptime("2017-06-28 09:20", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-28 11:05", "%Y-%m-%d %H:%M"),duration: 3, to: 4, from: 3, date: DateTime.strptime("2017-06-28 11:05", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-28 4:05", "%Y-%m-%d %H:%M"),duration: 3, to: 4, from: 3, date: DateTime.strptime("2017-06-28 4:05", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-29 22:10", "%Y-%m-%d %H:%M"),duration: 5, to: 3, from: 5, date: DateTime.strptime("2017-06-29 22:10", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-29 20:45", "%Y-%m-%d %H:%M"),duration: 4, to: 2, from: 5, date: DateTime.strptime("2017-06-29 20:45", "%Y-%m-%d %H:%M").to_date},
	{departure_time: DateTime.strptime("2017-06-30 10:40", "%Y-%m-%d %H:%M"),duration: 2, to: 1, from: 4, date: DateTime.strptime("2017-06-30 10:40", "%Y-%m-%d %H:%M").to_date}])

