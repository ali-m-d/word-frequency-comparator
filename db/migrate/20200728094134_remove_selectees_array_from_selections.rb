class RemoveSelecteesArrayFromSelections < ActiveRecord::Migration[6.0]
  def change
    remove_column :selections, :selectees_array
  end
end
