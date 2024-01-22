class AddColumnCaloriesInHundredGToDishOrDrink < ActiveRecord::Migration[7.1]
  def change
    add_column :dish_or_drinks, :calories_in_hundred_g, :integer
  end
end
