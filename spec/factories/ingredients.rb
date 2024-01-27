FactoryBot.define do
  factory :ingredient do
    ingredient_name { "MyString" }
    ingredient_weight { 1 }
    ingredient_calorie_per_100g { 1 }
    complex_dish_kitchen { nil }
  end
end
