# app/models/complex_dish_kitchen.rb
class ComplexDishKitchen < ApplicationRecord
  has_and_belongs_to_many :dish_or_drinks, join_table: 'complex_dish_kitchens_dish_or_drinks'
  has_many :ingredients, dependent: :destroy

  accepts_nested_attributes_for :ingredients, allow_destroy: true

  def calculate_calories
    # Your logic to calculate calories here based on the new structure
  end
end

