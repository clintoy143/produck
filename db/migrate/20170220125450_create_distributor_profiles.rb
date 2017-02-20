class CreateDistributorProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :distributor_profiles do |t|
      t.belongs_to :distributor, index: true, unique: true, foreign_key: true
      t.string :name
      t.string :last_name
      t.text :address
      t.string :contact_number
      t.integer :age
      
      t.timestamps
    end
  end
end
