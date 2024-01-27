class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.integer :ingredient_weight
      t.integer :ingredient_calorie_per_100g
      t.references :complex_dish_kitchen, foreign_key: true

      t.timestamps
    end
  end
end
