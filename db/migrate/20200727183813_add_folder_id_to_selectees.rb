class AddFolderIdToSelectees < ActiveRecord::Migration[6.0]
  def change
    add_column :selectees, :folder_id, :string
  end
end
