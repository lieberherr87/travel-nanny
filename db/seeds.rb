# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name:"First name 1", last_name: "Last name 1", email: "test@mail.com", password: "TESTTEST", encrypted_password:"TESTESTETET")
user2 = User.create(first_name:"First name 2", last_name: "Last name 2", email: "test@mail.com", password: "TESTTEST", encrypted_password:"TESTESTETET")
user3 = User.create(first_name:"First name 3", last_name: "Last name 3", email: "test@mail.com", password: "TESTTEST", encrypted_password:"TESTESTETET")

offer1 = Offer.create(location:"Züri", price_per_day: 100, user_id:3)
offer2 = Offer.create(location:"London", price_per_day: 200, user_id:1)
offer3 = Offer.create(location:"Paris", price_per_day: 50, user_id:2)

booking1 = Booking.create(start_date: 20091201, end_date: 20091202, full_price:"300", user_id: 3)
booking2 = Booking.create(start_date: 20101201, end_date: 20101202, full_price:"400", user_id: 1)
booking3 = Booking.create(start_date: 20111201, end_date: 20111202, full_price:"500", user_id: 2)

review1 = Review.create(content: "blabliblureview", rating: 3, booking_id: 2)
review2 = Review.create(content: "blabliblureview", rating: 1, booking_id: 1)
review3 = Review.create(content: "blabliblureview", rating: 5, booking_id: 3)
