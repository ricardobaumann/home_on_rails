class AddStockPriceToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :price, :decimal
  end
end
