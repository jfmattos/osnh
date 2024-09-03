# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "creating places"

Place.destroy_all

Place.create!(
  name: "smart fit",
  address: "Av. Nossa Senhora de Copacabana",
  opening_hours: "06:00 - 22:00",
  email: "smartfit@smart.com",
  phone_number: "1234-5678",
  services: "gym classes"

)

puts "places created!"
