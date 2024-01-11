class AddColumnTimeToJornalentry < ActiveRecord::Migration[7.1]
  def change
    add_column :jornalentries, :time, :time
  end
end
