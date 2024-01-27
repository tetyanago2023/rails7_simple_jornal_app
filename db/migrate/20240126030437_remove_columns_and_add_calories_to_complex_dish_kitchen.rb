class RemoveColumnsAndAddCaloriesToComplexDishKitchen < ActiveRecord::Migration[7.1]
  def change
    remove_column :complex_dish_kitchens, :complex_dish_ingredients, :text
    remove_column :complex_dish_kitchens, :ingredient_weight_in_gram, :integer
    add_column :complex_dish_kitchens, :complex_dish_calories, :integer
  end
end
