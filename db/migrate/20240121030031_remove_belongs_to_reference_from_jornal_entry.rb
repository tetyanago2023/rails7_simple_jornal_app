class RemoveBelongsToReferenceFromJornalEntry < ActiveRecord::Migration[7.1]
  def change
    change_table :jornalentries do |t|
      t.remove_references :dish_or_drink
    end
  end
end
