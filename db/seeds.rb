# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CURRENT DB SEEDS:

g1 = Guest.create(first_name: "Florence", last_name: "b", username: "FlorenceB", email: "florence@email.com", password: "blah" )
g2 = Guest.create(first_name: "Charles", last_name: "b", username: "CharlesB", email: "charles@email.com", password: "blah")
g3 = Guest.create(first_name: "Felix", last_name: "b", username: "FelixB", email: "felix@email.com", password: "blah")
g4 = Guest.create(first_name: "Alba", last_name: "b", username: "AlbaB", email: "alba@email.com", password: "blah")


h1 = Host.create(first_name: "Luanna", last_name: "b", username: "LuannaB", email: "luanna@email.com", phone_number: "07366475944", password: "blah")
h2 = Host.create(first_name: "James", last_name: "b", username: "JamesB", email: "james@email.com", phone_number: "07366492733", password: "blah")

p1 = Property.create(name: "Cozy One-Bedroom flat in St. John`s Wood", host: h1, postcode: "NW8", location: "Abercorn Place", price: 1750, sleeps: 3, bedrooms: 1, bathrooms: 1, balcony: false, washing_machine: true, kettle: true, coffee_machine: true, fridge: true, microwave: true, kitchenware: true, elevator: true, living_room: true, shower: true, bathtub: false, hairdryer: true, iron: true, hoover: true, mop: true, bedding: true, tv: true, wifi: true)
p2 = Property.create(name: "Comfortable Three-bedroom flat in Arsenal", host: h1, postcode: "N5", location: "Tywford House", price: 2250, sleeps: 6, bedrooms: 3, bathrooms: 1, balcony: true, washing_machine: true, kettle: true, coffee_machine: true, fridge: true, microwave: true, kitchenware: true, elevator: true, living_room: true, shower: false, bathtub: true, hairdryer: true, iron: true, hoover: true, mop: true, bedding: true, tv: false, wifi: true)
p3 = Property.create(name: "Spacious Four-bedroom house in Hoxton", host: h1, postcode: "E2", location: "Hackney Road", price: 4000, sleeps: 8, bedrooms: 4, bathrooms: 2, balcony: false, washing_machine: true, kettle: true, coffee_machine: true, fridge: true, microwave: true, kitchenware: true, elevator: false, living_room: true, shower: true, bathtub: false, hairdryer: true, iron: true, hoover: true, mop: true, bedding: true, tv: false, wifi: true)
p4 = Property.create(name: "Bright One-bedroom flat in Holloway Road", host: h1, postcode: "N7", location: "Buckmaster House", price: 1750, sleeps: 3, bedrooms: 1, bathrooms: 1, balcony: true, washing_machine: true, kettle: true, coffee_machine: true, fridge: true, microwave: true, kitchenware: true, elevator: true, living_room: true, shower: false, bathtub: true, hairdryer: true, iron: true, hoover: true, mop: true, bedding: true, tv: true, wifi: true)
p5 = Property.create(name: "British-Style One-bedroom flat in Shepherd’s Bush", host: h1, postcode: "W12", location: "Sterne Street", price: 1950, sleeps: 3, bedrooms: 1, bathrooms: 1, balcony: false, washing_machine: true, kettle: true, coffee_machine: true, fridge: true, microwave: true, kitchenware: true, elevator: false, living_room: false, shower: false, bathtub: true, hairdryer: true, iron: true, hoover: true, mop: true, bedding: true, tv: true, wifi: true)
p6 = Property.create(name: "Modern Duplex Four-bedroom flat in Dalston", host: h1, postcode: "NW16", location: "Stoke Newington Road", price: 2750, sleeps: 6, bedrooms: 4, bathrooms: 1, balcony: false, washing_machine: true, kettle: true, coffee_machine: true, fridge: true, microwave: true, kitchenware: true, elevator: false, living_room: false, shower: true, bathtub: false, hairdryer: true, iron: true, hoover: true, mop: true, bedding: true, tv: false, wifi: true)
p7 = Property.create(name: "Luxurious Two-bedroom Flat in Aldgate", host: h1, postcode: "E1", location: "Hessel Street", price: 2550, sleeps: 5, bedrooms:2, bathrooms: 1, balcony: true, washing_machine: true, kettle: true, coffee_machine: true, fridge: true, microwave: true, kitchenware: true, elevator: false, living_room: true, shower: false, bathtub: true, hairdryer: true, iron: true, hoover: true, mop: true, bedding: true, tv: true, wifi: true)

b1 = Booking.create(property: p2, guest: g1, confirmed: true, startDate: "Fri Apr 03 2020 12:00:00 GMT+0100", endDate: "Sun May 03 2020 12:00:00 GMT+0100")
b2 = Booking.create(property: p1, guest: g2, confirmed: true, startDate: "Tue May 12 2020 12:00:00 GMT+0100", endDate: "Thu Jun 11 2020 12:00:00 GMT+0100")
b3 = Booking.create(property: p3, guest: g3, confirmed: true, startDate: "Fri Jun 19 2020 12:00:00 GMT+0100", endDate: "Sun Jul 19 2020 12:00:00 GMT+0100")
b4 = Booking.create(property: p4, guest: g4, confirmed: true, startDate: "Fri Apr 03 2020 12:00:00 GMT+0100", endDate: "Thu Jun 11 2020 12:00:00 GMT+0100")
b5 = Booking.create(property: p1, guest: g4, confirmed: true, startDate: "Fri Apr 03 2020 12:00:00 GMT+0100", endDate: "Sun May 03 2020 12:00:00 GMT+0100")

gf1 = GuestFavourite.create(property: p2, guest: g4)
gf2 = GuestFavourite.create(property: p1, guest: g4)
gf3 = GuestFavourite.create(property: p3, guest: g4)

