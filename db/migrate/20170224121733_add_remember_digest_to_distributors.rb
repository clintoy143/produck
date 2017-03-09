class AddRememberDigestToDistributors < ActiveRecord::Migration[5.0]
  def change
    add_column :distributors, :remember_digest, :string
  end
end
