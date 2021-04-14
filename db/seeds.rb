# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning DB"
Restaurant.destroy_all
puts "creating DB"
resto1 = { name: "chez BOBO", address: "au coin de la rue", stars: "5", chef_name: "JEAN" }
resto2 = { name: "chez WUNG", address: "au coin de la rue", stars: "1" , chef_name: "WUNG"}
resto3 = { name: "chez MCDO", address: "au coin de la rue", stars: "2",chef_name: "PATRICK" }
resto4 = { name: "chez KFC", address: "au coin de la rue", stars: "3", chef_name: "BOB" }
resto5 = { name: "chez ARC", address: "au coin de la rue", stars: "5", chef_name: "STEEVE" }
Restaurants = []
[resto1, resto2, resto3, resto4, resto5].each_with_index do |attributes,index|
restaurant = Restaurant.create!(attributes)
Restaurants << restaurant
end
