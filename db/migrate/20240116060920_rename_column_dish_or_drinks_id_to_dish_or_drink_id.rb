class RenameColumnDishOrDrinksIdToDishOrDrinkId < ActiveRecord::Migration[7.1]
  def change
    rename_column :jornalentries, :dish_or_drinks_id, :dish_or_drink_id
  end
end
