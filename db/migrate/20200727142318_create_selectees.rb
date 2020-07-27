class CreateSelectees < ActiveRecord::Migration[6.0]
  def change
    create_table :selectees do |t|
      t.references :selection, null: false, foreign_key: true
      t.references :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
