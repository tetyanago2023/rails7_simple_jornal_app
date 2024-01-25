class CreateJoinTableComplexDishKitchensDishOrDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :complex_dish_kitchens_dish_or_drinks, id: false do |t|
      t.belongs_to :complex_dish_kitchen, null: false
      t.belongs_to :dish_or_drink, null: false

      t.index [:complex_dish_kitchen_id, :dish_or_drink_id], unique: true, name: 'index_cd_kitchen_do_drink'
      t.index [:dish_or_drink_id, :complex_dish_kitchen_id], name: 'index_do_drink_cd_kitchen'
    end
  end
end
