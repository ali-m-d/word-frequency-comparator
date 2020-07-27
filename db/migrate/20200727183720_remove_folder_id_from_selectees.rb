class RemoveFolderIdFromSelectees < ActiveRecord::Migration[6.0]
  def change
    remove_reference :selectees, :folder, null: false, foreign_key: true
  end
end
