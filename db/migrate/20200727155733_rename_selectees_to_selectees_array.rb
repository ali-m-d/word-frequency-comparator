class RenameSelecteesToSelecteesArray < ActiveRecord::Migration[6.0]
  def change
    rename_column :selections, :selectees, :selectees_array
  end
end
