# app/models/complex_dish_kitchen.rb
class ComplexDishKitchen < ApplicationRecord
  has_and_belongs_to_many :dish_or_drinks, join_table: 'complex_dish_kitchens_dish_or_drinks'
  has_many :ingredients, dependent: :destroy, inverse_of: :complex_dish_kitchen

  accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: :all_blank
  # accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank

  def total_calories
    total_calories = 0

    ingredients.each do |ingredient|
      # Calculate the calories for each ingredient based on weight and calories per 100g
      calories_for_ingredient = (ingredient.ingredient_weight * ingredient.ingredient_calorie_per_100g) / 100.0
      total_calories += calories_for_ingredient
    end

    total_calories.round(2) # Round the total calories to 2 decimal places
  end
end

