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
  name: "Fitness Place",
  address: "R. Cap. Barbosa, 871 - Cocotá, Rio de Janeiro",
  opening_hours: "05:30 - 23:00",
  email: "fit@smart.com",
  phone_number: "(21)1234-5678",
  services: "Gym classes"
)

Place.create!(
  name: "Sports Club",
  address: "R. Ten. Cleto Campelo, 497 - Cocotá, Rio de Janeiro",
  opening_hours: "07:00 - 22:00",
  email: "sport@club.com",
  phone_number: "(21)3396-3304",
  services: "Soccer, basketball, martial arts, swimming"
)

Place.create!(
  name: "Religious Center",
  address: "Praia Congonhas do Campo, 151 - Bancários, Rio de Janeiro",
  opening_hours: "13:00 - 21:00",
  email: "religious@center.com",
  phone_number: "(21)9697-2119",
  services: "Charity, spiritual treatment, volunteering"
)

Place.create!(
  name: "Manuel Bandeira Park",
  address: "Praia da Olaria, 155 - Cocotá, Rio de Janeiro",
  opening_hours: "24 hours",
  email: "manuel@bandeira.com",
  phone_number: "N/A",
  services: "Sporting equipment, green fields"
)

puts "places created!"
