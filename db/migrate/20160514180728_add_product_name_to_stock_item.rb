class AddProductNameToStockItem < ActiveRecord::Migration
  def change
    add_column :stock_items, :product_name, :string
  end
end
