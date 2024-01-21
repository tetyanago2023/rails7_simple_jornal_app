# class Jornalentry < ApplicationRecord
# end

class Jornalentry < ApplicationRecord
  belongs_to :dish_or_drink
end