class DropSelectees < ActiveRecord::Migration[6.0]
  def change
    drop_table :selectees
  end
end
