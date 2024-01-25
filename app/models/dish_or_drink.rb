class DishOrDrink < ApplicationRecord
  has_and_belongs_to_many :jornalentries, join_table: 'jornalentries_dish_or_drinks'

  # Add the association with ComplexDishKitchen
  has_and_belongs_to_many :complex_dish_kitchens, join_table: 'complex_dish_kitchens_dish_or_drinks'
end
