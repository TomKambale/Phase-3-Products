class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :genre
      t.string :platform
      t.integer :price
      t.timestamps
    end
  end
end
