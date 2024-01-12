FactoryBot.define do

  factory :jornalentry do
    date { Faker::Date.backward(days: 14) }
    tested_at { Faker::Time.backward(days: 14, period: :evening) }
    list_of_food { Faker::Lorem.words(number: 4) }
    glucose_mg_dl { Faker::Number.between(from: 100, to: 200) }
    notes { Faker::Lorem.sentence(word_count: 5) }
  end
end
