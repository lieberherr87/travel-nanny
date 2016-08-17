# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.destroy_all


user1 = User.create(first_name:"First name 1", last_name: "Last name 1", email: "test5@mail.com", password: "TESTTEST")
user2 = User.create(first_name:"First name 2", last_name: "Last name 2", email: "test1@mail.com", password: "TESTTEST")
user3 = User.create(first_name:"First name 3", last_name: "Last name 3", email: "test2@mail.com", password: "TESTTEST")

offer1 = user1.create_offer(location:"Züri", price_per_day: 100)
offer2 = user2.create_offer(location:"London", price_per_day: 200)
offer3 = user3.create_offer(location:"Paris", price_per_day: 50)

booking1 = user1.bookings.create(start_date: 20091201, end_date: 20091202, full_price:"300", offer: offer1)
booking2 = user2.bookings.create(start_date: 20101201, end_date: 20101202, full_price:"400", offer: offer2)
booking3 = user3.bookings.create(start_date: 20111201, end_date: 20111202, full_price:"500", offer: offer3)

# review1 = booking1.reviews.create(content: "blabliblureview", rating: 3)
# review2 = booking2.reviews.create(content: "blabliblureview", rating: 1)
# review3 = booking3.reviews.create(content: "blabliblureview", rating: 5)
