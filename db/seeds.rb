# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def access()
  var = [ 'Admin', 'Manager', 'Cashier', 'Regular User' ]
  var[rand(0.3)]
end

NUM = 1

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
    access_level: access(),
    user_id: NUM,
  )
  NUM += 1
  staff.save
end

10.times do
  faq = Faq.new(
    question: Faker::Lorem.question(word_count: 11),
    answer: Faker::Lorem.paragraph(sentence_count: 4),
    user_id: Faker::Number.between(from: 1, to: 14),
  )
  faq.save
end

15.times do
  invoice = Invoice.new(
    cost: Faker::Number.decimal(l_digits: 5, r_digits: 2),
    date: Faker::Date.between(from: '2019-09-23', to: '2023-09-25'),
    user_id: Faker::Number.between(from: 1, to: 25),
    staff_id: Faker::Number.between(from: 1, to: 15),
  )
  invoice.save
end

10.times do
  event = Event.new(
    title: Faker::DcComics.title,
    date: Faker::Date.between(from: '2019-09-23', to: '2023-09-25'),
    description: Faker::Lorem.paragraph(sentence_count: 4),
    staff_id: Faker::Number.between(from: 1, to: 15),
  )
  event.save
end