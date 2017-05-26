# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.new
u1.email = "a@a.com"
u1.password = "12341234"
u1.password_confirmation = "112341234"
u1.first_name = "Arjun"
u1.last_name = "Venkataswamy"
u1.save

puts "#{User.count} users in the database"

Listing.destroy_all
l1 = Listing.new
l1.user_id =u1.id
l1.city ="Chicago"
l1.bathrooms = 1
l1.bedrooms = 1
l1.price = 1000
l1.save
