class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.belongs_to :supplier, index: true
      t.string :product_name
      t.text :description
      t.float :price
      t.integer :stock
      t.timestamps
    end
  end
end
