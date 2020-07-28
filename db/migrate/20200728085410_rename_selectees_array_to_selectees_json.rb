class RenameSelecteesArrayToSelecteesJson < ActiveRecord::Migration[6.0]
  def change
    rename_column :selections, :selectees_array, :selectees_json
  end
end
