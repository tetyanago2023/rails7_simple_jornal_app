class CreateDishOrDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :dish_or_drinks do |t|
      t.string :name
      t.text :ingredients

      t.timestamps
    end
  end
end
