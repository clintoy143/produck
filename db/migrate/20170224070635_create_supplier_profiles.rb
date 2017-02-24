class CreateSupplierProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :supplier_profiles do |t|
      t.text :address
      t.string :category
      t.string :store_name
      t.string :contact_number
      t.belongs_to :supplier, index: true, unique: true, foreign_key: true
      
      t.timestamps
    end
  end
end
