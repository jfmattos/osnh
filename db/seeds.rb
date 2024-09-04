
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Resource.destroy_all

d = [
"Explain to me in five paragraphs the causes, symptoms, and treatments for Diabetes",
"Explain to me in five paragraphs the causes, symptoms, and treatments for Cardiovascular disease",
"Explain to me in five paragraphs the causes, symptoms, and treatments for Asthma",
"Explain to me in five paragraphs the causes, symptoms, and treatments for Depression",
"Explain to me in five paragraphs the causes, symptoms, and treatments for Anxiety"]

n = ["Diabetes", "Cardiovascular disease", "Asthma", "Depression", "Anxiety"]

d.each_with_index do |disease, index|
  sleep(300)
  client = OpenAI::Client.new
  chatgpt = client.chat(parameters: {
  model: "gpt-3.5-turbo",
  messages: [{ role: "user", content: disease}]
})

Resource.create!(name: n[index], details: chatgpt["choices"][0]["message"]["content"])
puts "created resource"
end
