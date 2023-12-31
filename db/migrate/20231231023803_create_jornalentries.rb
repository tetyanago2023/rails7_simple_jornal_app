class CreateJornalentries < ActiveRecord::Migration[7.1]
  def change
    create_table :jornalentries do |t|
      t.date :date
      t.string :list_of_food
      t.integer :glucose_mg_dl
      t.string :notes

      t.timestamps
    end
  end
end
