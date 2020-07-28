class AddSelecteesArrayToSelections < ActiveRecord::Migration[6.0]
  def change
    add_column :selections, :selectees_array, :string, array: true
  end
end
