class AddProductNameToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :product_name, :string
  end
end
