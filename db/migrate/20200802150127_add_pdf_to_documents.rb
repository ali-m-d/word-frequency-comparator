class AddPdfToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :pdf, :string
  end
end
