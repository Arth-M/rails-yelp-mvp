# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
#
puts 'Destroy all restaurants and reviews'
Restaurant.destroy_all
puts 'Restaurants and reviews destroyed'

puts 'creating new restaurants'
Restaurant.create!(name: "Chez boris", address:"Montpel", category:"french")
Restaurant.create!(name:"Bi bim bap", address:"Paris", category:"chinese")
Restaurant.create!(name:"Grand slam burger", address:"Montpel", category:"french")
Restaurant.create!(name:"Pizzas", address:"Toulouse", category:"italian")
Restaurant.create!(name:"La moule", address:"Bordeaux", category:"belgian")
Restaurant.create!(name:"Tsuki suchi", address:"Clermont-Ferrand", category: "japanese")
puts 'Created new restaurants'
