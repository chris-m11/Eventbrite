# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

DatabaseCleaner.allow_production = true
DatabaseCleaner.allow_remote_database_url = true
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

User.create(first_name: "bob", last_name:Faker::Name.last_name, description:Faker::Lorem.paragraph, email: "bernard@yopmail.com",password:"password", password:"password")

puts 'User created'


20.times do
	Event.create(start_date: Faker::Date.forward(days: 365), duration: rand(6..1000)*5, admin_id: User.all.sample.id, price: rand(5..1000), description:Faker::Lorem.paragraph, title: Faker::Movies::StarWars.quote, location: Faker::Address.city)
end
puts 'Events created'



