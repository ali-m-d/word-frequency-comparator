class AddSelecteesToSelection < ActiveRecord::Migration[6.0]
  def change
    add_column :selections, :selectees, :string, array:true, default: []
  end
end
