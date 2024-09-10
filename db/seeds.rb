
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# -----------------------------------------------------------------------------
# SURVEYS
# -----------------------------------------------------------------------------

puts "Creating Surveys"

Survey.destroy_all

whodas = Survey.create!(
  title: "WHO: Disability Assesment Schedule 2.0 (WHODAS)",
  interval_days: [90, 90, 180]
)

sf36 = Survey.create!(
  title: "SF-36",
  interval_days: [90, 90, 180]
)

puts " Surveys created!"

# -----------------------------------------------------------------------------
# QUESTIONAIRS (QUESTIONS AND ANSWERS)
# -----------------------------------------------------------------------------

puts "Creating Questions and Answers"

Question.destroy_all
Answer.destroy_all

# require_relative "seeds_sf36"
# require_relative "seeds_whodas"
require_relative "seeds_whoqol"

puts " Questions and Answers created!"

# -----------------------------------------------------------------------------
# USERS
# -----------------------------------------------------------------------------

puts "Creating Users"

User.destroy_all

diana = User.create!(
  first_name: 'Diana',
  last_name: 'Saddi',
  cns: '701001888084297',
  address: 'Parque Poeta Manuel Bandeira, S/N - Cocotá, Rio de Janeiro - RJ, 21910-296',
  phone_number: '(21) 99845-2252',
  admin: true,
  email: 'dianasaddi@gmail.com',
  password: '123456'
)

john = User.create!(
  first_name: 'John',
  last_name: 'Doe',
  cns: '701001888084296',
  address: 'Rua X, 01, Cocotá, Rio de Janeiro - RJ, 21910-296',
  phone_number: '(21) 99959-6279',
  admin: false,
  email: 'johnd@1.com',
  password: '123456'
)

jane = User.create!(
  first_name: 'Jane',
  last_name: 'Doe',
  cns: '701001888084295',
  address: 'Rua X, 01, Cocotá, Rio de Janeiro - RJ, 21910-296',
  phone_number: '(21) 98859-4279',
  admin: false,
  email: 'janed@1.com',
  password: '123456'
)

mary = User.create!(
  first_name: 'Mary',
  last_name: 'Doe',
  cns: '701001888084294',
  address: 'Rua X, 01, Cocotá, Rio de Janeiro - RJ, 21910-296',
  phone_number: '(21) 97859-6279',
  admin: false,
  email: 'maryd@1.com',
  password: '123456'
)

puts "Users created!"

# -----------------------------------------------------------------------------
# DIAGNOSES
# -----------------------------------------------------------------------------

puts "Creating Diagnoses"

Diagnosis.destroy_all

Diagnosis.create!(
  disease: "Asthma",
  user: diana
)

Diagnosis.create!(
  disease: "ADHD",
  user: diana
)

Diagnosis.create!(
  disease: "Anxiety",
  user: john
)

Diagnosis.create!(
  disease: "Diabetes",
  user: john
)

Diagnosis.create!(
  disease: "Hypertension",
  user: jane
)

Diagnosis.create!(
  disease: "Depression",
  user: jane
)

Diagnosis.create!(
  disease: "Esquizofrenia",
  user: mary
)

Diagnosis.create!(
  disease: "Fibromialgia",
  user: mary
)

puts "Diagnoses created!"

# -----------------------------------------------------------------------------
# PLACES
# -----------------------------------------------------------------------------

puts "Creating Places"

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
  address: "R. Grana, 200 - Ilha do Governador, Rio de Janeiro - RJ, 21920-500",
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

Place.create!(
  name: "Governor's Island Union",
  address: "Estrada do Galeão, 322 - Cacuia, Rio de Janeiro",
  opening_hours: "08:00 - 17:00",
  email: "island@union.com",
  phone_number: "(21)3396-8169",
  services: "Samba classes"
)

Place.create!(
  name: "Rotary Club",
  address: "R. Colina, 60 - Jardim Guanabara, Rio de Janeiro",
  opening_hours: "09:00 - 17:00",
  email: "rotary@club.com",
  phone_number: "(21)24630156",
  services: "Public classes and child support"
)

Place.create!(
  name: "Civil Registration",
  address: "Praia da Olaria, 155 - Cocotá, Rio de Janeiro",
  opening_hours: "09:00 - 17:00",
  email: "civil@registration.com",
  phone_number: "(21)3386-1504",
  services: "Civil registration and documentation"
)

Place.create!(
  name: "Governor's Island Forum",
  address: "Praia da Olaria - Cocotá, Rio de Janeiro",
  opening_hours: "09:00 - 17:00",
  email: "island@forum.com",
  phone_number: "(21)3626-4700",
  services: "Tax Enforcement, Judicial Reorganizations and Arbitration-Related Disputes, Special Civil Courts, Mediation and Conciliation."
)

puts "places created!"

# -----------------------------------------------------------------------------
# RESOURCES
# -----------------------------------------------------------------------------

puts "Creating Resources"

Resource.destroy_all

d = [
"Explain to me in 3 short sections separated by indentation: the causes, symptoms, and treatments for Diabetes",
"Explain to me in 3 short sections separated by indentation: the causes, symptoms, and treatments for Cardiovascular disease",
"Explain to me in 3 short sections separated by indentation: the causes, symptoms, and treatments for Asthma",
"Explain to me in 3 short sections separated by indentation: the causes, symptoms, and treatments for Depression",
"Explain to me in 3 short sections separated by indentation: the causes, symptoms, and treatments for Anxiety",
"Explain to me in 3 short sections separated by indentation: the causes, symptoms, and treatments for Bipolar"]

n = ["Diabetes", "Cardiovascular disease", "Asthma", "Depression", "Anxiety", "Bipolar"]

d.each_with_index do |disease, index|
  sleep(120)
  client = OpenAI::Client.new
  chatgpt = client.chat(parameters: {
  model: "gpt-3.5-turbo",
  messages: [{ role: "user", content: disease}]
  })

  Resource.create!(name: n[index], details: chatgpt["choices"][0]["message"]["content"])
  puts "Created Resource!"

end
