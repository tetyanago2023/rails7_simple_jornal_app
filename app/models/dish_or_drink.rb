class DishOrDrink < ApplicationRecord
  has_and_belongs_to_many :jornalentries, join_table: 'jornalentries_dish_or_drinks'
end