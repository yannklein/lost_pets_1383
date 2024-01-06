# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning seeds.."
Pet.destroy_all

puts "creating 20 pets..."
20.times do
  pet = Pet.create!(
    name: Faker::Name.first_name,
    species: Pet::SPECIES.sample,
    gender: Pet::GENDER.sample,
    color: Faker::Color.color_name,
    location: Faker::Address.street_name,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today)
  )
  puts "#{pet.name} created."
end
puts "Done!"