class Jornalentry < ApplicationRecord
  has_and_belongs_to_many :dish_or_drinks, join_table: 'jornalentries_dish_or_drinks'
end