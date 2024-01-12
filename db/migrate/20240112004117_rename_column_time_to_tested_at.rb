class RenameColumnTimeToTestedAt < ActiveRecord::Migration[7.1]
  def change
    rename_column :jornalentries, :time, :tested_at
  end
end
