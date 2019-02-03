# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default
# values. The data can then be loaded with the rails db:seed command (or created alongside the
# database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  name = Faker::Superhero.name
  User.find_or_create_by(name: name, email: Faker::Internet.email(name))
end
puts "Users Created: #{User.count}"

10.times do
  Events::SetupTable.call
end
puts "Games Created: #{GameSession.count}"
