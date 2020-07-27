class AddWordToSelection < ActiveRecord::Migration[6.0]
  def change
    add_column :selections, :word, :string
  end
end
