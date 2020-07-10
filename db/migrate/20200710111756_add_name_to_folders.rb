class AddNameToFolders < ActiveRecord::Migration[6.0]
  def change
    add_column :folders, :name, :string
  end
end
