class CreateDistributors < ActiveRecord::Migration[5.0]
  def change
    create_table :distributors do |t|
      t.string :email, index: true
      t.string :password_digest
      
      t.timestamps
    end
  end
end
