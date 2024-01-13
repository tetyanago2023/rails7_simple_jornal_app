# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

50.times do
  Jornalentry.create!(
    date: Faker::Date.backward(days: 30),
    list_of_food: Faker::Food.dish,
    glucose_mg_dl: Faker::Number.between(from: 80, to: 180),
    notes: Faker::Lorem.paragraph,
    tested_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    created_at: Faker::Time.backward(days: 14),
    updated_at: Faker::Time.backward(days: 7)
  )
end

puts "Seeding complete!"