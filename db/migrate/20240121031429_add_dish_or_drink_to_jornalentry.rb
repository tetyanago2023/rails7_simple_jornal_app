class AddDishOrDrinkToJornalentry < ActiveRecord::Migration[7.1]
  def change
    add_reference :jornalentries, :dish_or_drink, foreign_key: true
  end
end
