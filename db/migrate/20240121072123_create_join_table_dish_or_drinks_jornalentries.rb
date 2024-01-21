class CreateJoinTableJornalentriesDishOrDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :jornalentries_dish_or_drinks, id: false do |t|
      t.belongs_to :jornalentry, null: false
      t.belongs_to :dish_or_drink, null: false

      t.index [:jornalentry_id, :dish_or_drink_id], unique: true
      t.index [:dish_or_drink_id, :jornalentry_id]
    end
  end
end
