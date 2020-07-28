class AddSelecteesJsonToSelections < ActiveRecord::Migration[6.0]
  def change
    add_column :selections, :selectees_json, :json, array: true, default: []
  end
end
