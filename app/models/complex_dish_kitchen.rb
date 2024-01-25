class ComplexDishKitchen < ApplicationRecord
  has_and_belongs_to_many :dish_or_drinks, join_table: 'complex_dish_kitchens_dish_or_drinks'
end
