class CreateComplexDishKitchens < ActiveRecord::Migration[7.1]
  def change
    create_table :complex_dish_kitchens do |t|
      t.string :complex_dish_name
      t.text :complex_dish_ingredients
      t.integer :ingredient_weight_in_gram

      t.timestamps
    end
  end
end
