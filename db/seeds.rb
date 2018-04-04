# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting all old restaurants"
Restaurant.delete_all
puts "done deleting"

10.times do

  puts "creating a restaurant"
      Restaurant.create(
        name: Faker::Coffee.blend_name,
        address: Faker::Address.city,
        description: Faker::TheFreshPrinceOfBelAir.quote,
        rating: Faker::Number.between(1,5),
        chef: Faker::LordOfTheRings.character
      )
  puts "done creating a restaurant"

end

puts "done creating all 10 restaurants"
