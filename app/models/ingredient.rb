class Ingredient < ApplicationRecord
  # belongs_to :complex_dish_kitchen, inverse_of: :ingredients
  belongs_to :complex_dish_kitchen
end
