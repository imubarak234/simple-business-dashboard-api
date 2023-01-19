# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def access()
  var = [ 'Admin', 'Manager', 'cashier', 'User' ]
  var[rand(0.3)]
end

require "faker"

25.times do
  users = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(from: 18, to: 70),
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    address_2: Faker::Address.full_address,
    zipcode: Faker::Address.zip_code,
    city: Faker::Address.city,
    phone: Faker::PhoneNumber.cell_phone_with_country_code,
  )
  users.save
end

15.times do
  staff = Staff.new(
    access_level: access()
    
  )
end