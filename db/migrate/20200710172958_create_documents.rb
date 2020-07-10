class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :url
      t.text :text
      t.references :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
