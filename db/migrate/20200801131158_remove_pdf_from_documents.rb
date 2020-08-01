class RemovePdfFromDocuments < ActiveRecord::Migration[6.0]
  def change
    remove_column :documents, :pdf
  end
end
