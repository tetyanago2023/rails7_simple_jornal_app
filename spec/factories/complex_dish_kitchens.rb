FactoryBot.define do
  factory :complex_dish_kitchen do
    complex_dish_name { "MyString" }
    complex_dish_ingredients { "MyText" }
    ingredient_weight_in_gram { 1 }
  end
end
