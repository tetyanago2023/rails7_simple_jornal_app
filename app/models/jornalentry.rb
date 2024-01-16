class Jornalentry < ApplicationRecord
  belongs_to :dish_or_drink, optional: true
end
