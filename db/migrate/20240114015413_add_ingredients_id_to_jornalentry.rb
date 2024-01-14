class AddIngredientsIdToJornalentry < ActiveRecord::Migration[7.1]
  def change
    add_column :jornalentries, :dish_or_drinks_id, :integer
  end
end
