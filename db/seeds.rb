# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+44 20 7420 9320", category: "belgian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+44 20 7729 1888", category: "italian" }
assiette_gourmande = { name: "L'assiette gourmande", address: "2 Rue de la Canave, 33650 Martillac", phone_number: "09 82 27 35 25", category: "french" }
fufu = { name: "Fufu", address: "71 Cours Portal, 33300 Bordeaux", phone_number: "05 57 83 41 49", category: "japanese" }
ciao_a_tutti = { name: "ciao a tutti", address: "45 Avenue John Fitzgerald Kennedy, 33700 Mérignac", phone_number: "05 56 13 17 87", category: "italian" }

[ dishoom, pizza_east, assiette_gourmande, fufu, ciao_a_tutti ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
