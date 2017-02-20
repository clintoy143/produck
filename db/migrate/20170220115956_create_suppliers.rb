class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :email, index: true
      t.string :name
      t.string :password_digest
      t.timestamps
    end
  end
end
