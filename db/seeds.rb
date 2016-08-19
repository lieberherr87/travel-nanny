# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.destroy_all

user1 = User.create(first_name:"Steffen", last_name: "Rudishüli", email: "test@mail.com", password: "password", nanny: true, image: open(File.join(Rails.root, "app/assets/images/seb.jpg")))
user2 = User.create(first_name:"Bani", last_name: "Vanani", email: "test2@mail.com", password: "password", nanny: true, image: open(File.join(Rails.root, "app/assets/images/romain.jpeg")))
user3 = User.create(first_name:"Hanna", last_name: "Montana", email: "test3@mail.com", password: "password", nanny: true, image: open(File.join(Rails.root, "app/assets/images/anne.jpg")))

offer1 = user1.create_offer(location:"Zürich", price_per_day: 100, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe vel aperiam harum reiciendis velit, autem itaque pariatur deserunt at assumenda voluptates quasi laborum doloremque fuga aspernatur mollitia quaerat soluta ratione.", video: "https://www.youtube.com/watch?v=HkuKHwetV6Q", superpower: "I speak 5 Languages")
offer2 = user2.create_offer(location:"London", price_per_day: 200, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet et dolor voluptate officia blanditiis eum numquam suscipit reiciendis, incidunt non, impedit, quibusdam velit praesentium nulla alias quis obcaecati nihil rerum.", video: "https://www.youtube.com/watch?v=HkuKHwetV6Q", superpower: "I speak 6 Languages")
offer3 = user3.create_offer(location:"Paris", price_per_day: 50, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex repellat, vero optio deserunt. Molestias incidunt, at maxime cupiditate, dolorum pariatur veniam nostrum tempora corrupti et culpa non perspiciatis blanditiis sapiente.", video: "https://www.youtube.com/watch?v=HkuKHwetV6Q", superpower: "I speak 5 Languages")

user4 = User.create(first_name:"Hans", last_name: "Müller", email: "test4@mail.com", password: "password")
user5 = User.create(first_name:"Rudolf", last_name: "Rudi", email: "test5@mail.com", password: "password")
user6 = User.create(first_name:"Kathrin", last_name: "Käthi", email: "test6@mail.com", password: "password")

booking1 = user4.bookings.create(start_date: 20161001, end_date: 20161101, full_price:"300", offer: offer1)
booking2 = user5.bookings.create(start_date: 20161201, end_date: 20161206, full_price:"400", offer: offer2)
booking3 = user6.bookings.create(start_date: 20161101, end_date: 20161104, full_price:"500", offer: offer3)

#review1 = booking1.reviews.create(content: "blabliblureview", rating: 3)
#review2 = booking2.reviews.create(content: "blabliblureview", rating: 1)
#review3 = booking3.reviews.create(content: "blabliblureview", rating: 5)
