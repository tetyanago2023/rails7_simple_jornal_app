# class DishOrDrink < ApplicationRecord
#   belongs_to :jornalentry
# end

class DishOrDrink < ApplicationRecord
  has_many :jornalentries
end
