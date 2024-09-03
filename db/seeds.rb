# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all

User.create(
  first_name: 'Diana',
  last_name: 'Saddi',
  cns: '701001888084297',
  address: 'Parque Poeta Manuel Bandeira, S/N - Cocotá, Rio de Janeiro - RJ, 21910-296',
  phone_number: '(21) 99845-2252',
  admin: true,
  email: 'dianasaddi@gmail.com',
  password: '123456'
)

User.create(
  first_name: 'John',
  last_name: 'Doe',
  cns: '701001888084293',
  address: 'Rua X, 01, Cocotá, Rio de Janeiro - RJ, 21910-296',
  phone_number: '(21) 99859-1279',
  admin: false,
  email: 'jd@1.com',
  password: '123456'
)
